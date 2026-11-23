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

## Riwayat perubahan - Tutorial 09 & Tugas 08

1. **Implementasi Form Tambah Proyek (Tutorial 09):**
   - Membuat halaman `ProjectFormPage` pada `lib/screens/project_form.dart` menggunakan `StatefulWidget`, `Form`, dan `GlobalKey<FormState>`.
   - Menambahkan input nama proyek, deskripsi, kategori, teknologi, dan tautan proyek.
   - Menambahkan validasi untuk nama serta deskripsi proyek, kemudian menampilkan ringkasan data melalui `AlertDialog` setelah input valid.
2. **Implementasi Form Tambah Pengalaman (Tugas 08):**
   - Membuat halaman baru `ExperienceFormPage` pada `lib/screens/experience_form.dart`.
   - Menambahkan input judul pengalaman, deskripsi, kategori, status pengalaman, tanggal selesai, dan URL thumbnail opsional.
   - Menggunakan `DropdownButtonFormField` untuk kategori, `SwitchListTile` untuk status masih berlangsung, serta `showDatePicker()` untuk memilih tanggal selesai.
3. **Validasi dan Dialog Ringkasan:**
   - Memvalidasi judul dan deskripsi agar tidak kosong atau hanya berisi spasi.
   - Membatasi judul pengalaman hingga 255 karakter dan memvalidasi URL thumbnail jika pengguna mengisinya.
   - Memastikan tanggal selesai dipilih ketika status pengalaman bukan sedang berlangsung.
   - Menampilkan seluruh data pengalaman yang valid dalam `AlertDialog` dengan tombol `Tutup`.
4. **Navigasi dan Drawer:**
   - Menambahkan kartu `Tambah Pengalaman` pada halaman utama dengan ikon `work_outline` dan warna `Colors.orange`.
   - Menggunakan `Navigator.push()` dari kartu aksi untuk membuka `ExperienceFormPage`, sehingga pengguna dapat kembali melalui tombol kembali bawaan.
   - Menambahkan opsi `Add Experience` pada drawer serta menggunakan drawer yang sama pada halaman Home, Add Project, dan Add Experience.
   - Mempertahankan opsi `Home` dan `Add Project` pada drawer untuk mendukung navigasi antarhalaman.

## Tugas 8
1. Navigator.push() menambahkan halaman baru ke atas tumpukan (stack) navigasi, sehingga halaman sebelumnya tetap ada di bawahnya dan pengguna bisa kembali lewat tombol back. Navigator.pushReplacement() mengganti halaman yang sedang tampil dengan halaman baru, jadi halaman lama dibuang dari stack dan pengguna tidak bisa kembali ke halaman tersebut. Navigator.pop() mengeluarkan halaman teratas dari stack sehingga tampilan kembali ke halaman di bawahnya. Untuk membuka formulir dari kartu aksi, metode yang digunakan adalah Navigator.push() (dengan MaterialPageRoute) di dalam onTap pada InkWell kartu, karena pengguna perlu bisa kembali ke halaman utama setelah selesai mengisi atau membatalkan formulir. Opsi Home di drawer membawa pengguna kembali ke halaman utama dengan Navigator.pushReplacement() ke halaman utama (MyHomePage). Dengan begitu halaman yang sedang aktif diganti oleh halaman utama, dan stack tidak menumpuk setiap kali pengguna berpindah lewat drawer.

2. Scaffold berperan sebagai kerangka dasar halaman yang menyediakan slot standar, yaitu appBar di atas, drawer di sisi kiri, dan body untuk isi halaman. AppBar menjaga judul dan gaya bagian atas tetap seragam, sedangkan Drawer menyediakan menu navigasi yang sama di setiap halaman. Karena setiap halaman memakai susunan yang sama, pengguna selalu menemukan navigasi di tempat yang sama dan pengembang tidak perlu menulis ulang struktur dasar. Contoh penggunaan warna tema portofolio di lebih dari satu halaman: warna utama tema diambil lewat Theme.of(context).colorScheme.primary atau didefinisikan di ThemeData pada MaterialApp, lalu dipakai sebagai backgroundColor pada AppBar di halaman utama dan halaman formulir, serta sebagai warna header pada DrawerHeader. Dengan begitu perubahan warna cukup dilakukan di satu tempat dan langsung berlaku di semua halaman tersebut.

3. Formulir dibuat dengan susunan Form yang berisi Column karena kolom cocok untuk menumpuk field input dari atas ke bawah secara berurutan, sehingga mudah dibaca dan diisi, terutama di layar ponsel. Widget pengatur jarak seperti Padding dan SizedBox memberi ruang antarfield dan di sekeliling tombol agar elemen tidak saling menempel dan tetap nyaman disentuh. Ketika ruang layar terbatas, misalnya saat papan ketik muncul atau layar dalam mode landscape, isi Column bisa melebihi tinggi layar dan menyebabkan overflow. Karena itu Column dibungkus SingleChildScrollView sebagai widget penggulir, sehingga seluruh field tetap bisa dijangkau dengan menggulir layar.

4. GlobalKey<FormState> adalah kunci unik yang dipasang pada widget Form agar kita bisa mengakses FormState dari luar, misalnya dari onPressed tombol Simpan. validator adalah fungsi pada setiap TextFormField yang menerima teks yang dimasukkan pengguna, lalu mengembalikan pesan error jika nilainya tidak valid atau null jika valid. validate() adalah metode pada FormState yang dipanggil lewat _formKey.currentState!.validate(), dan ia menjalankan seluruh fungsi validator pada field di dalam form. Jika semuanya mengembalikan null, validate() bernilai true dan data boleh diproses, sedangkan jika ada satu saja yang gagal, pesan error ditampilkan dan data tidak disimpan. Contoh nilai yang ditolak: field harga diisi dengan angka negatif seperti -5000, atau field nama dibiarkan kosong atau hanya berisi spasi. Memilih jenis input atau papan ketik saja (misalnya keyboardType: TextInputType.number) belum cukup karena itu hanya mengatur tampilan papan ketik, bukan memeriksa isi yang sebenarnya. Pengguna masih bisa menempelkan teks (paste), mengisi angka yang tidak masuk akal, atau mengosongkan field, sehingga validasi tetap diperlukan untuk menjamin data yang masuk benar-benar sesuai aturan.


## Riwayat Penggunaan Generative AI - Tugas 8

Untuk pengerjaan tugas kali ini, saya menggunakan generative AI untuk memeriksa checklist pengerjaan tugas yang disesuaikan dengan kondisi projek saya saat ini yang sudah dibuat mengikuti panduan Tutorial 9. Generative AI memeberikan checklist tugas yang belum diselesaikan, memandu dalam mengerjakan checklist pengerjaan tugas, dan memeriksa hasil akhir dari pengerjaan Tugas 8.

- https://chatgpt.com/s/cx_6b046e55255081918db9b0e55c6d6d73

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
