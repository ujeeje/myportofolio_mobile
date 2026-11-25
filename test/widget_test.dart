import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:myportofolio_mobile/main.dart';
import 'package:myportofolio_mobile/models/project.dart';
import 'package:myportofolio_mobile/services/api_client.dart';
import 'package:myportofolio_mobile/services/auth_state.dart';

void main() {
  testWidgets('App renders home page', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(apiClient: ApiClient()));
    expect(find.text('MyPortfolio'), findsOneWidget);
    expect(find.text('Lihat Proyek'), findsOneWidget);
  });

  test('Project JSON serialization maps snake_case fields', () {
    final json = <String, dynamic>{
      'id': '123e4567-e89b-12d3-a456-426614174000',
      'title': 'Portfolio App',
      'description': 'Built with Flutter',
      'tech_stack': 'Flutter, Django',
      'project_url': 'https://example.com/project',
      'project_image_url': null,
    };

    final project = Project.fromJson(json);
    expect(project.id, '123e4567-e89b-12d3-a456-426614174000');
    expect(project.title, 'Portfolio App');
    expect(project.techStack, 'Flutter, Django');
    expect(project.projectUrl, 'https://example.com/project');
    expect(project.projectImageUrl, '');

    final encoded = project.toJson();
    expect(encoded.containsKey('id'), isFalse);
    expect(encoded['tech_stack'], 'Flutter, Django');
    expect(encoded['project_url'], 'https://example.com/project');
    expect(encoded['project_image_url'], '');
  });

  test('ApiClient and AuthState handle login, projects, and logout', () async {
    final mockHttp = MockClient((request) async {
      if (request.url.path == '/api/v1/auth/token/' &&
          request.method == 'POST') {
        return http.Response(jsonEncode({'token': 'secret-token'}), 200);
      }
      if (request.url.path == '/api/v1/projects/' && request.method == 'GET') {
        return http.Response(
          jsonEncode([
            {
              'id': 'uuid-1',
              'title': 'Demo',
              'description': 'Desc',
              'tech_stack': 'Flutter',
              'project_url': 'https://example.com',
            },
          ]),
          200,
        );
      }
      if (request.url.path == '/api/v1/projects/' && request.method == 'POST') {
        expect(request.headers['Authorization'], 'Token secret-token');
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        return http.Response(jsonEncode({...body, 'id': 'uuid-2'}), 201);
      }
      if (request.url.path == '/api/v1/auth/logout/' &&
          request.method == 'POST') {
        expect(request.headers['Authorization'], 'Token secret-token');
        return http.Response('', 204);
      }
      return http.Response('Not Found', 404);
    });

    final client = ApiClient(
      client: mockHttp,
      baseUrl: 'http://localhost:8000',
    );
    final auth = AuthState(client);

    expect(auth.isLoggedIn, isFalse);
    await auth.login('admin', 'pass');
    expect(auth.isLoggedIn, isTrue);
    expect(auth.token, 'secret-token');

    final projects = await client.getProjects();
    expect(projects, hasLength(1));
    expect(projects.first.title, 'Demo');

    final created = await client.createProject(
      const Project(
        title: 'New',
        description: 'New desc',
        techStack: 'Dart',
        projectUrl: 'https://example.com/new',
      ),
      token: auth.token!,
    );
    expect(created.id, 'uuid-2');

    await auth.logout();
    expect(auth.isLoggedIn, isFalse);
    expect(auth.token, isNull);
  });
}
