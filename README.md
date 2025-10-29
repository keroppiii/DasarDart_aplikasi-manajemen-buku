## Aplikasi Manajemen Buku

### Fatimah Nurmawati
### Shift C

Program ini dibuat menggunakan **Dart** untuk menerapkan dasar-dasar pemrograman seperti:
- Input dan output
- Percabangan (`if else`)
- Perulangan (`while`)
- List dan Map
- Fungsi

Aplikasi ini berjalan di terminal dan berfungsi untuk menambah dan menampilkan daftar buku.

---

## 💻 Kode Program dan Penjelasan

```dart
// Import library untuk input/output
import 'dart:io';

void main() {
  // List untuk menyimpan data buku (tiap buku berupa Map)
  List<Map<String, dynamic>> daftarBuku = [];

  // Perulangan utama agar menu tampil terus sampai user memilih keluar
  while (true) {
    print('\n=== Aplikasi Manajemen Buku ===');
    print('1. Tambah Buku');
    print('2. Tampilkan Buku');
    print('3. Keluar');
    stdout.write('Pilih menu (1-3): ');
    String? input = stdin.readLineSync(); // Baca input user

    // Percabangan untuk menentukan aksi sesuai input
    if (input == '1') {
      tambahBuku(daftarBuku);
    } else if (input == '2') {
      tampilkanBuku(daftarBuku);
    } else if (input == '3') {
      print('Terima kasih telah menggunakan aplikasi ini!');
      break; // Hentikan loop
    } else {
      print('Pilihan tidak valid, silakan coba lagi.');
    }
  }
}

// Fungsi untuk menambah buku baru
void tambahBuku(List<Map<String, dynamic>> daftarBuku) {
  stdout.write('\nMasukkan judul buku: ');
  String? judul = stdin.readLineSync();

  stdout.write('Masukkan nama penulis: ');
  String? penulis = stdin.readLineSync();

  stdout.write('Masukkan tahun terbit: ');
  String? tahun = stdin.readLineSync();

  // Jika semua data diisi, tambahkan ke list
  if (judul != null && penulis != null && tahun != null) {
    daftarBuku.add({
      'judul': judul,
      'penulis': penulis,
      'tahun': tahun,
    });
    print('✅ Buku "$judul" berhasil ditambahkan!');
  } else {
    print('❌ Gagal menambahkan buku. Pastikan semua data diisi.');
  }
}

// Fungsi untuk menampilkan daftar buku
void tampilkanBuku(List<Map<String, dynamic>> daftarBuku) {
  print('\n=== Daftar Buku ===');

  // Jika list kosong
  if (daftarBuku.isEmpty) {
    print('Belum ada buku yang ditambahkan.');
  } else {
    // Tampilkan semua buku dengan nomor urut
    for (int i = 0; i < daftarBuku.length; i++) {
      var buku = daftarBuku[i];
      print('${i + 1}. ${buku['judul']} - ${buku['penulis']} (${buku['tahun']})');
    }
  }
}
