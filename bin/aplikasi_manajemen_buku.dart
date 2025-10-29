import 'dart:io';

void main() {
  List<Map<String, dynamic>> daftarBuku = [];

  while (true) {
    print('\n=== Aplikasi Manajemen Buku ===');
    print('1. Tambah Buku');
    print('2. Tampilkan Buku');
    print('3. Keluar');
    stdout.write('Pilih menu (1-3): ');
    String? input = stdin.readLineSync();

    if (input == '1') {
      tambahBuku(daftarBuku);
    } else if (input == '2') {
      tampilkanBuku(daftarBuku);
    } else if (input == '3') {
      print('Terima kasih telah menggunakan aplikasi ini!');
      break;
    } else {
      print('Pilihan tidak valid, silakan coba lagi.');
    }
  }
}

void tambahBuku(List<Map<String, dynamic>> daftarBuku) {
  stdout.write('\nMasukkan judul buku: ');
  String? judul = stdin.readLineSync();

  stdout.write('Masukkan nama penulis: ');
  String? penulis = stdin.readLineSync();

  stdout.write('Masukkan tahun terbit: ');
  String? tahun = stdin.readLineSync();

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

void tampilkanBuku(List<Map<String, dynamic>> daftarBuku) {
  print('\n=== Daftar Buku ===');
  if (daftarBuku.isEmpty) {
    print('Belum ada buku yang ditambahkan.');
  } else {
    for (int i = 0; i < daftarBuku.length; i++) {
      var buku = daftarBuku[i];
      print(
          '${i + 1}. ${buku['judul']} - ${buku['penulis']} (${buku['tahun']})');
    }
  }
}
