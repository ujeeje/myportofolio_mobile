import 'package:json_annotation/json_annotation.dart';

part 'experience.g.dart';

/// An experience entry returned by the Django REST Framework API.
///
/// The property names use Dart's lowerCamelCase convention. The generated
/// serializer converts them to the snake_case names used by Django, such as
/// `started_at` and `ended_at`.
@JsonSerializable(fieldRename: FieldRename.snake)
class Experience {
  const Experience({
    required this.title,
    required this.description,
    required this.category,
    this.thumbnail = '',
    this.endedAt,
    this.id,
    this.startedAt,
  });

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  /// UUID assigned by Django when the experience is created.
  @JsonKey(includeToJson: false)
  final String? id;

  final String title;
  final String description;

  /// One of the values accepted by Django, for example `internship`.
  final String category;

  /// Optional image URL. Django may return null for this field.
  @JsonKey(defaultValue: '')
  final String thumbnail;

  /// Set automatically by Django when the experience is created.
  @JsonKey(includeToJson: false)
  final DateTime? startedAt;

  /// Null means that the experience is still ongoing.
  final DateTime? endedAt;

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}
