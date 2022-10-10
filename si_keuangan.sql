-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2022 at 02:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_keuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--

CREATE TABLE `catering` (
  `id` int(11) NOT NULL,
  `id_siswa` smallint(6) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `waktu` date NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering`
--

INSERT INTO `catering` (`id`, `id_siswa`, `nominal`, `tanggal`, `waktu`, `time`) VALUES
(1, 3, '15000', '2019-12-18 10:11:30', '2019-11-08', '2019-11-17'),
(2, 2, '15000', '2019-11-16 20:48:15', '2019-11-09', '2019-11-17'),
(3, 2, '15000', '2019-11-16 20:48:15', '2019-11-11', '2019-11-17'),
(4, 9, '15000', '2019-12-04 07:55:13', '2019-12-04', '2019-12-04'),
(5, 9, '15000', '2019-12-04 07:55:13', '2019-12-05', '2019-12-04'),
(6, 9, '0', '2019-12-18 10:40:36', '2019-12-06', '2019-12-04'),
(7, 9, '15000', '2019-12-04 07:55:13', '2019-12-07', '2019-12-04'),
(9, 9, '15000', '2019-12-04 08:04:39', '2019-12-27', '2019-12-04'),
(10, 9, '15000', '2019-12-04 08:04:39', '2019-12-28', '2019-12-04'),
(11, 9, '15000', '2019-12-04 08:04:39', '2019-12-30', '2019-12-04'),
(12, 8, '15000', '2019-12-04 08:07:48', '2019-12-12', '2019-12-04'),
(13, 8, '15000', '2019-12-04 08:07:48', '2019-12-13', '2019-12-04'),
(14, 8, '15000', '2019-12-04 08:07:48', '2019-12-14', '2019-12-04'),
(15, 8, '15000', '2019-12-04 08:08:51', '2019-12-26', '2019-12-04'),
(16, 8, '15000', '2019-12-04 08:08:51', '2019-12-30', '2019-12-04'),
(17, 8, '0', '2019-12-18 10:25:52', '2019-12-31', '2019-12-04'),
(18, 8, '15000', '2019-12-18 09:15:55', '2019-12-19', '2019-12-18'),
(19, 8, '15000', '2019-12-18 09:15:55', '2019-12-23', '2019-12-18'),
(20, 8, '15000', '2019-12-18 09:15:55', '2019-12-24', '2019-12-18'),
(21, 8, '15000', '2019-12-18 09:15:55', '2019-12-25', '2019-12-18'),
(22, 8, '15000', '2019-12-18 09:15:55', '2020-01-01', '2019-12-18'),
(23, 8, '15000', '2019-12-18 09:15:55', '2020-01-02', '2019-12-18'),
(24, 8, '15000', '2019-12-18 09:15:55', '2020-01-06', '2019-12-18'),
(25, 8, '15000', '2019-12-18 09:15:55', '2020-01-07', '2019-12-18'),
(26, 8, '15000', '2019-12-18 09:15:55', '2020-01-08', '2019-12-18'),
(27, 8, '15000', '2019-12-18 09:15:55', '2020-01-09', '2019-12-18'),
(28, 12, '0', '2022-09-19 15:22:01', '2022-09-19', '2022-09-19'),
(29, 12, '15000', '2022-09-19 15:16:24', '2022-09-20', '2022-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `id_guru` tinyint(4) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `jam` varchar(4) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `time` date NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `id_guru`, `periode`, `jam`, `nominal`, `time`, `tanggal`) VALUES
(2, 3, 'Februari-2020', '16', '40000', '2020-02-25', '2020-02-25 05:16:50'),
(3, 3, 'April-2022', '10', '40000', '2022-09-05', '2022-09-05 10:47:02'),
(4, 4, 'September-2022', '50', '40000', '2022-09-18', '2022-09-18 09:28:51'),
(5, 3, 'September-2022', '10', '40000', '2022-09-19', '2022-09-19 15:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` enum('Pria','Wanita') NOT NULL,
  `nip` varchar(15) NOT NULL,
  `bidang` varchar(40) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` enum('Berhenti','Cuti','Aktif') NOT NULL,
  `number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `name`, `sex`, `nip`, `bidang`, `alamat`, `status`, `number`) VALUES
(3, 'Baharuddin', 'Pria', '1201200221', 'Matimatika', 'Jln Kenangan', 'Aktif', '0853-8833-2311'),
(4, 'Rismasuci', 'Wanita', '02130001231', 'Bahasa Indonesia', 'Jl. Kelapa dua', 'Aktif', '0852-9992-1212');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `wali` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `wali`, `keterangan`) VALUES
(5, 'Kelas 1A', 'Baharuddin', ''),
(6, 'Kelas 1B', 'Rismasuci', '');

-- --------------------------------------------------------

--
-- Table structure for table `lainnya`
--

CREATE TABLE `lainnya` (
  `id` int(11) NOT NULL,
  `sekarang` varchar(15) NOT NULL,
  `time` date NOT NULL,
  `jenis` varchar(64) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lainnya`
--

INSERT INTO `lainnya` (`id`, `sekarang`, `time`, `jenis`, `keterangan`, `nominal`, `tanggal`) VALUES
(6, '200225', '2020-02-25', '', 'Saldo Awal Sekolah', '25000000', '2020-02-25 05:21:15'),
(7, '220905', '2022-09-05', '', 'BOS', '10000000', '2022-09-05 10:50:54'),
(8, '220919', '2022-09-19', '', 'bos', '50000', '2022-09-19 14:03:52'),
(9, '220919', '2022-09-19', '', 'yu', '500', '2022-09-19 14:19:19'),
(10, '220919', '2022-09-19', '', 'jtehe', '500000', '2022-09-19 14:20:26'),
(11, '220919', '2022-09-19', '', 'gwef', '99', '2022-09-19 14:21:00'),
(12, '220919', '2022-09-19', '', 'dwq', '75000', '2022-09-19 14:24:09'),
(13, '220919', '2022-09-19', 'Dana BOS', 'terima bos', '800000', '2022-09-19 14:26:17'),
(15, '220920', '2022-09-20', 'Dana BOP', 'feqfwq', '500000', '2022-09-19 17:50:48'),
(16, '220921', '2022-09-21', 'Sumbangan', 'ugtkvv', '5000', '2022-09-20 18:23:22'),
(17, '220921', '2022-09-21', 'Pinjaman', 'injammmmm', '90000', '2022-09-20 18:24:58'),
(18, '220921', '2022-09-21', 'Dana BOS', 'jhreewrrrrrrrrr', '50000', '2022-09-20 18:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `saldo_awal` varchar(15) NOT NULL DEFAULT '0',
  `kas_masuk` varchar(15) DEFAULT '0',
  `kas_keluar` varchar(15) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `saldo_awal`, `kas_masuk`, `kas_keluar`, `tanggal`) VALUES
(13, '0', '25000000', '0', '2020-02-25'),
(14, '25000000', '0', '0', '2022-09-04'),
(15, '25000000', '10070000', '400000', '2022-09-05'),
(16, '34670000', '0', '2000000', '2022-09-18'),
(17, '32670000', '1455599', '915000', '2022-09-19'),
(18, '33210599', '500000', '0', '2022-09-20'),
(19, '33710599', '145000', '0', '2022-09-21'),
(20, '33855599', '0', '0', '2022-10-02'),
(21, '33855599', '0', '600000', '2022-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tipe` enum('KM','KK') NOT NULL,
  `kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `nama`, `nominal`, `tipe`, `kode`) VALUES
(1, 'Uang SPP', '70000', 'KM', 'KM-0001'),
(2, 'Uang Ujian', '50000', 'KM', 'KM-0002'),
(3, 'Uang Snack', '5000', 'KM', 'KM-0003'),
(4, 'Uang Catering', '15000', 'KM', 'KM-0004'),
(5, 'Uang Pendaftaran', '200000', 'KM', 'KM-0005'),
(6, 'Pembayaran Gaji', '40000', 'KK', 'KK-0001');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `time` date NOT NULL,
  `siswa` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `sekarang` varchar(10) NOT NULL,
  `time` date NOT NULL,
  `jenis` varchar(64) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `nominal`, `sekarang`, `time`, `jenis`, `keterangan`, `tanggal`) VALUES
(6, '50000', '221010', '2022-10-10', 'Operasional', 'Belanja operasional bulanan', '2022-10-10 12:11:42'),
(7, '50000', '221010', '2022-10-10', 'ATK', 'Beli ATK', '2022-10-10 12:11:45'),
(8, '500000', '221010', '2022-10-10', 'Belanja Aset (Inventaris)', 'Pengadaan barang meja kursi', '2022-10-10 12:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `sex` enum('Pria','Wanita') NOT NULL,
  `status` enum('Berhenti','Cuti','Aktif') NOT NULL,
  `wali` varchar(50) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelas` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `name`, `nis`, `sex`, `status`, `wali`, `tempat`, `tanggal`, `alamat`, `kelas`) VALUES
(10, 'Suci Permata Sari', '123313134223', 'Wanita', 'Aktif', 'Musa Harun', 'Kampar', '2020-02-17', 'Jl. Simpang Lima', 6),
(11, 'Ahmad Dhairobbi', '1231314331', 'Pria', 'Aktif', 'Darmijan', 'Batu Guntung', '2002-07-25', 'Jln Kebakyoran Baru', 5),
(12, 'Andrew Benedictus Jamesie', '01234567', 'Pria', 'Cuti', 'Darmijan', 'Medan', '2003-01-20', 'Jl. Dr. Mansyur', 5),
(13, 'Ucok Bambang', '76543210', 'Pria', 'Berhenti', 'Darmijan', 'Medan', '2001-01-01', 'Jl. Bambang', 5);

-- --------------------------------------------------------

--
-- Table structure for table `snack`
--

CREATE TABLE `snack` (
  `id` int(11) NOT NULL,
  `id_siswa` smallint(6) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `time` date NOT NULL,
  `waktu` date NOT NULL,
  `nominal` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snack`
--

INSERT INTO `snack` (`id`, `id_siswa`, `tanggal`, `time`, `waktu`, `nominal`) VALUES
(15, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-18', '5000'),
(16, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-19', '5000'),
(17, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-20', '5000'),
(18, 8, '2019-12-18 11:57:24', '2019-11-17', '2019-11-21', '0'),
(19, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-22', '5000'),
(20, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-23', '5000'),
(21, 8, '2019-12-18 11:01:43', '2019-11-17', '2019-11-25', '0'),
(22, 10, '2020-02-25 05:11:36', '2020-02-25', '2020-02-12', '5000'),
(23, 10, '2020-02-25 05:11:36', '2020-02-25', '2020-02-13', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` int(11) NOT NULL,
  `id_siswa` smallint(6) NOT NULL,
  `time` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `id_siswa`, `time`, `bulan`, `nominal`, `tanggal`) VALUES
(3, 9, '2019-11-17', 'Januari-2019', '70000', '2019-11-17 07:20:18'),
(4, 10, '2020-02-25', 'Januari-2020', '70000', '2020-02-25 05:09:48'),
(5, 11, '2022-09-05', 'April-2022', '70000', '2022-09-05 10:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `tanggal`
--

CREATE TABLE `tanggal` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `Keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggal`
--

INSERT INTO `tanggal` (`id`, `tgl`, `Keterangan`) VALUES
(3, '2020-06-01', 'Hari Pancasila'),
(4, '2020-05-22', 'Hari Buruh');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `wali` varchar(100) NOT NULL,
  `sex` enum('Pria','Wanita') NOT NULL,
  `status` enum('Non-Aktif','Aktif') NOT NULL,
  `kelas` tinyint(4) NOT NULL,
  `bayar` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `name`, `nis`, `tempat`, `tanggal`, `alamat`, `wali`, `sex`, `status`, `kelas`, `bayar`) VALUES
(3, 'Ahmad Safawi', '1333', 'Rambah Samo', '2000-06-13', 'Jl. Simpang Mangga', 'Bahar', 'Pria', 'Non-Aktif', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id` int(11) NOT NULL,
  `id_siswa` smallint(6) NOT NULL,
  `nominal` varchar(15) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `time` date NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `active` enum('1','0') NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `role`, `active`, `gambar`, `created_on`) VALUES
(1, 'harumsentosa@gmail.com', '$2y$10$dFdQaba34BplJRnmCv54/uhoFLU0wlXCY4lRG/EG9FpX9fN1kzjq.', 'Harum Sentosa Baru', 1, '1', 'logo_harum_sentosa_baru.png', '2022-09-18 10:03:50'),
(3, 'admin123@gmail.com', '$2y$10$KmTNhCy0tO31/E2nF4g36Oh8g2RMxPTcDNdWZWUwxOpMHPuvTw4AC', 'admin123', 2, '1', 'logo_harum_sentosa_baru.png', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lainnya`
--
ALTER TABLE `lainnya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snack`
--
ALTER TABLE `snack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanggal`
--
ALTER TABLE `tanggal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catering`
--
ALTER TABLE `catering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lainnya`
--
ALTER TABLE `lainnya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `snack`
--
ALTER TABLE `snack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanggal`
--
ALTER TABLE `tanggal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
