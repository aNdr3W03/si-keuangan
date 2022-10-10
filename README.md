# si-keuangan

# Sistem Informasi Manajemen Keuangan Sekolah

Sistem informasi manajemen keuangan sekolah ini merupakan sistem yang dipakai untuk mengontrol keuangan sekolah dengan *custom* sesuai dengan permintaan sekolah sebelumnya

## Cara Pemasangan
1. *Clone* GitHub *repository* [ini](https://github.com/aNdr3W03/si-keuangan.git)
2. *Upload* *database*, ada 2 cara:

   **SQL**
   > - Buka *dashboard* MySQL localhost PhpMyAdmin
   > - Buat sebuah *database* MySQL dengan nama `si_keuangan`
   > - Lalu *import* *file* `si_keuangan.sql` ke dalam *database* `si_keuangan` yang baru dibuat
   > - Klik **Ok** atau **Go** untuk memproses *import* *database*
   > - Database berhasil di-*import*

   **XML**
   > - Buka dashboard MySQL localhost PhpMyAdmin
   > - Lalu *import* *file* `si_keuangan.xml`
   > - Klik **Ok** atau **Go** untuk memproses *import* *database*
   > - Database baru berhasil diimport dan berhasil dibuat dengan nama `si_keuangan`

3. Masuk ke `localhost/si-keuangan`
4. Login menggunakan
   > email : `harumsentosa@gmail.com`  
   > password : `administrator`  

   atau

   > email : `admin123@gmail.com`  
   > password : `admin123`  

## Data Master
1. Data Siswa
2. Data Guru/Pegawai
3. Data Kelas
4. Data Tanggal Merah
5. Nilai Pokok Uang *Catering*, *Snack*, SPP, Ujian, Gaji, Pendaftaran

## Fitur
1. Manajemen Data uang *Catering* Siswa (Uang Masuk)
2. Manajemen Data uang *Snack* Siswa (Uang Masuk)
3. Manajemen Data uang SPP Siswa (Uang Masuk)
4. Manajemen Data uang Ujian Siswa (Uang Masuk)
5. Manajemen Data uang Pendaftaran Baru (Uang Masuk)
6. Manajemen Data Uang Masuk Lainnya (Uang Masuk)
7. Manajemen Data Gaji Guru (Uang Keluar)
8. Manajemen Data Uang Keluar Lainnya (Uang Keluar)

## Fitur Tambahan
1. Rekap Uang Masuk dan Keluar Harian (Otomatis), Mingguan, Bulanan dan Periode
2. Manajemen Sistem Kenaikan Kelas Siswa
3. Import Data Siswa dan Guru dengan Excel
4. Export Rekap Uang Masuk dan Keluar ke Pdf
5. Manajemen *Database* dengan sistem serverSide agar aplikasi ringan jika data sudah banyak
6. Grafik Uang Masuk dan Keluar
7. CRUD AJAX dengan JQuery Validation
