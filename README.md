## Aplikasi Manajemen Buku 
---
##### Fatimah Nurmawati
##### Shift C
---

Program ini dibuat menggunakan **Dart** untuk menerapkan dasar-dasar pemrograman.  
Aplikasi berjalan di terminal (console) dan digunakan untuk **menambah dan menampilkan daftar buku**.

---

### Penjelasan Kode Program

1. **Import Library**
   - `import 'dart:io';` digunakan untuk input/output di terminal (`stdin.readLineSync()` & `print`).

2. **List untuk Menyimpan Buku**
   - `List<Map<String, dynamic>> daftarBuku = [];`  
     Menyimpan semua buku. Setiap buku berupa Map dengan kunci: `judul`, `penulis`, `tahun`.

3. **Main Loop (Menu Utama)**
   - `while (true)` membuat menu terus muncul sampai user memilih keluar.  
   - Menu:
     1. Tambah Buku  
     2. Tampilkan Buku  
     3. Keluar  
   - Input pengguna dibaca dengan `stdin.readLineSync()`.  
   - Percabangan (`if-else`) menentukan fungsi yang dijalankan:
     - `'1'` → `tambahBuku()`  
     - `'2'` → `tampilkanBuku()`  
     - `'3'` → keluar loop (`break`)  
     - Lainnya → pesan “Pilihan tidak valid”

4. **Fungsi `tambahBuku()`**
   - Meminta input: judul, penulis, tahun.  
   - Jika valid, menambahkan buku ke `daftarBuku` dengan format Map:
     ```
     {'judul': ..., 'penulis': ..., 'tahun': ...}
     ```
   - Menampilkan konfirmasi berhasil atau gagal.

5. **Fungsi `tampilkanBuku()`**
   - Mengecek apakah `daftarBuku` kosong:
     - Kosong → pesan “Belum ada buku yang ditambahkan.”  
     - Ada isi → menampilkan semua buku dengan nomor urut:
       ```
       1. Judul Buku - Penulis (Tahun)
       ```

6. **Alur Program**
   1. Program mulai dari `main()` → menampilkan menu.  
   2. User memilih opsi → program mengeksekusi fungsi sesuai pilihan.  
   3. Program kembali ke menu utama setelah selesai.  
   4. Berulang sampai user memilih keluar (`3`).

7. **Konsep Pemrograman yang Dipakai**
   - Variabel & tipe data (`String`, `List`, `Map`)  
   - Input/output terminal (`stdin`, `stdout`)  
   - Percabangan (`if-else`)  
   - Perulangan (`while`, `for`)  
   - Fungsi modular (`tambahBuku()`, `tampilkanBuku()`)

---

### Cara Menjalankan

**1 Menambah Buku Baru**

**2 Menambahkan Buku Lagi**

**3 Menampilkan Daftar Buku**

**4 Keluar dari Program**

---

### Cara Menjalankan
1. Pastikan Dart SDK sudah terpasang.  
2. Buka terminal di folder proyek.  
3. Jalankan:
```bash
dart run




