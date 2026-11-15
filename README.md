Nama : Jefry Acmal Dzikhrullah

NPM : 2506614795

Kelas : PBP A

# My Portofolio - Mobile

My Portofolio adalah aplikasi mobile berisikan portofolio pribadi saya yang dibangun dengan framework Flutter.

## Riwayat perubahan - Tutorial 08 & Tugas 07

1. **Pemisahan Berkas & Refactoring Widget:**
   - Memisahkan kode tata letak antarmuka utama dari `lib/main.dart` ke dalam berkas baru `lib/menu.dart`.
   - Mengubah widget `MyHomePage` menjadi `StatelessWidget`
2. **Implementasi (`InfoCard`):**
   - Menambahkan 3 kartu di bagian profil:
     - Kartu NPM (`2506614795`)
     - Kartu Name (`Jefry Acmal Dzikhrullah`)
     - Kartu Class (`PBP A`)
3. **Implementasi (`ItemCard`):**
   - Membuat 3 tombol dalam bentuk kartu:
     - `Lihat Proyek` (Ikon: `folder`, Warna: `Colors.blue`)
     - `Tambah Proyek` (Ikon: `add_circle`, Warna: `Colors.green`)
     - `Logout` (Ikon: `logout`, Warna: `Colors.red`)
   - Menambahkan fungsi `onTap` menggunakan `InkWell` pada setiap `ItemCard` yang memunculkan `SnackBar` berisi pesan interaktif: `"Kamu telah menekan tombol [Nama Tombol]!"`.

## Tugas 7
1. Widget tree pada Flutter adalah susunan tree yang merepresentasikan seluruh komponen antarmuka pada aplikasi. Di Flutter, hampir segala elemen visual dibangun menggunakan widget yang saling bersarang satu sama lain. parent-child relationship bekerja dengan cara parent-widget membungkus serta mengatur tata letak, ukuran batas, atau konfigurasi properti dari child-widget-nya. Ketika terjadi pembaruan atau perubahan pada parent-widget Flutter akan otomatis rebuild pada chain yang tersambung pada child-widget yang berada di bawahnya.

2. Dalam proyek ini, antarmuka dibangun menggunakan berbagai widget bawaan Flutter. Struktur dasar halaman menggunakan MaterialApp, Scaffold, dan AppBar dengan fondasi StatelessWidget (MyApp dan MyHomePage). Tata letak diatur melalui Column, Row, Padding, Center, SizedBox, dan GridView.count untuk kisi menu, sedangkan komponen visualnya memanfaatkan Card, Container (dengan penyesuaian lebar MediaQuery), Text, dan Icon. Untuk interaktivitas, aplikasi menggunakan Material dan InkWell untuk efek sentuhan tombol, serta ScaffoldMessenger dan SnackBar untuk menampilkan notifikasi pesan.

3. MaterialApp berperan sebagai root widget di puncak hierarki aplikasi untuk menerapkan desain Material Design, tema global, serta navigasi. Penempatannya di level root wajib dilakukan agar widget turunan di bawahnya, seperti Scaffold dan Navigator, dapat mengakses konteks dan konfigurasi tema secara menyeluruh.

4. Perbedaan utama antara keduanya terletak pada ada tidaknya state. StatelessWidget bersifat statis dan tidak memiliki state internal, sehingga tampilannya tetap dan hanya bergantung pada data awal. Sebaliknya, StatefulWidget memiliki objek State terpisah yang memungkinkan antarmuka diperbarui secara dinamis saat terjadi perubahan data atau interaksi pengguna. StatelessWidget digunakan untuk komponen yang tampilannya tetap, seperti teks label atau kartu profil. Sementara itu, pilih StatefulWidget untuk komponen interaktif yang tampilannya perlu berubah langsung, seperti formulir input, animasi, atau fitur pemilihan item.

5. BuildContext adalah objek penanda lokasi untuk suatu widget di dalam widget tree aplikasi. Parameter context di dalam metode build sangat penting karena berfungsi sebagai referensi bagi widget untuk mengambil data dari parent-widget. Sebagai contoh, context digunakan untuk mengambil tema warna melalui Theme.of(context), mengecek ukuran layar dengan MediaQuery.of(context), serta menampilkan SnackBar lewat ScaffoldMessenger.of(context).

6. Hot reload adalah fitur Flutter yang menerapkan perubahan kode terbaru langsung ke dalam Dart Virtual Machine tanpa mereset state atau data yang sedang berjalan. Proses ini berlangsung sangat cepat sehingga ideal saat merapikan tampilan antarmuka. Sebaliknya, hot restart memuat ulang seluruh sistem aplikasi dan menghapus semua state, sehingga aplikasi kembali ke kondisi awal seperti baru dijalankan.
Kita perlu melakukan hot restart saat membuat perubahan yang tidak bisa ditangani hot reload. Contohnya meliputi perubahan pada fungsi main, inisialisasi awal di initState, penambahan aset atau package di berkas pubspec.yaml, serta modifikasi kode native Android atau iOS.

## Riwayat Penggunaan Generative AI - Tugas 7

Untuk pengerjaan tugas kali ini, saya menggunakan generative AI untuk memeriksa checklist pengerjaan tugas yang disesuaikan dengan kondisi projek saya saat ini yang sudah dibuat mengikuti panduan Tutorial 8. Generative AI memeberikan checklist tugas yang belum diselesaikan dan memberi saran perbaikan minor.

- https://claude.ai/share/b10fa2f3-3c4b-4eb3-875b-ba5425d3912e

## Panduan Setup

### Prasyarat
- [Flutter SDK](https://docs.flutter.dev/get-started/install) terpasang di sistem.
- Perangkat pengujian (Android Studio / Emulator, Google Chrome untuk Web, atau HP fisik dengan mode USB debugging aktif).

### Langkah Instalasi & Menjalankan Proyek

1. **Clone repositori (jika belum):**
   ```bash
   git clone https://github.com/ujeeje/myportofolio_mobile.git
   ```

2. **Masuk ke direktori proyek:**
   ```bash
   cd myportofolio_mobile
   ```

3. **Unduh dependensi proyek:**
   ```bash
   flutter pub get
   ```

4. **Jalankan analisis kode (opsional, untuk memastikan tidak ada issue):**
   ```bash
   flutter analyze
   ```

5. **Jalankan aplikasi:**
   - Menjalankan di browser (Google Chrome):
     ```bash
     flutter run -d chrome
     ```
   - Menjalankan di emulator / perangkat fisik yang terhubung:
     ```bash
     flutter run
     ```

## Panduan Test

Untuk menjalankan pengujian widget (*widget test*), jalankan perintah berikut:
```bash
flutter test
```
