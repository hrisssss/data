-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2025 at 03:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukl`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `isi_artikel` text NOT NULL,
  `judul_artikel` varchar(200) NOT NULL,
  `gambar_artikel` mediumtext NOT NULL,
  `deskripsi_artikel` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `isi_artikel`, `judul_artikel`, `gambar_artikel`, `deskripsi_artikel`) VALUES
(21, 'aaaa', 'cara menyikat gigi yang benar', 'artikel_foto/remaja gosok gigi.jpg', 'aaa'),
(24, 'Kesehatan gigi merupakan salah satu aspek penting dalam menjaga kesehatan tubuh secara keseluruhan. Gigi yang sehat tidak hanya berfungsi untuk mengunyah makanan dengan baik, tetapi juga membantu menjaga nutrisi dan pencernaan yang optimal. Perawatan gigi yang rutin, seperti menyikat gigi dua kali sehari dan rutin memeriksakan gigi ke dokter, sangat dianjurkan untuk mencegah berbagai masalah mulut seperti gigi berlubang, radang gusi, dan bau mulut. Selain itu, menjaga kesehatan gigi juga berdampak positif pada kepercayaan diri dan kualitas hidup seseorang. Oleh karena itu, edukasi tentang kebiasaan menjaga kesehatan gigi sejak dini sangat penting dilakukan di segala usia.', 'makanan untuk mencegah gigi berlubang', 'artikel_foto/quality_restoration_20241115072119734.jpg', 'cara menjaga gigi tetap sehat'),
(25, 'Kesehatan gigi merupakan salah satu aspek penting dalam menjaga kesehatan tubuh secara keseluruhan. Gigi yang sehat tidak hanya berfungsi untuk mengunyah makanan dengan baik, tetapi juga membantu menjaga nutrisi dan pencernaan yang optimal. Perawatan gigi yang rutin, seperti menyikat gigi dua kali sehari dan rutin memeriksakan gigi ke dokter, sangat dianjurkan untuk mencegah berbagai masalah mulut seperti gigi berlubang, radang gusi, dan bau mulut. Selain itu, menjaga kesehatan gigi juga berdampak positif pada kepercayaan diri dan kualitas hidup seseorang. Oleh karena itu, edukasi tentang kebiasaan menjaga kesehatan gigi sejak dini sangat penting dilakukan di segala usia.', '8 Cara Menjaga Kesehatan Gigi dan Mulut yang Efektif', 'artikel_foto/hargai-kesehatan-gigi-dan-mulut-sebagaimana-menghargai-diri-sendiri-0-alodokter.jpg', 'ased');

-- --------------------------------------------------------

--
-- Table structure for table `dokter_gigi`
--

CREATE TABLE `dokter_gigi` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `foto_dokter` varchar(1000) NOT NULL,
  `keterangan_dokter` varchar(200) NOT NULL,
  `keaktifan` varchar(10) NOT NULL DEFAULT 'aktif',
  `no_dokter` int(11) NOT NULL,
  `harga` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter_gigi`
--

INSERT INTO `dokter_gigi` (`id_dokter`, `nama_dokter`, `foto_dokter`, `keterangan_dokter`, `keaktifan`, `no_dokter`, `harga`) VALUES
(45, 'Dr. Sanjaya', 'profildokter/dokter 1.jpg', 'Dr sanjaya alumni uneversitas kedokteran tahun 2011. 5 tahun pengalaman sebagai dokter', 'aktif', 123, 'Rp. 20.000');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_konsultasi`
--

CREATE TABLE `jadwal_konsultasi` (
  `id_jadwal_konsultasi` int(11) NOT NULL,
  `id_dokter` int(11) DEFAULT NULL,
  `nama_pasien` varchar(50) DEFAULT NULL,
  `keluhan` varchar(50) DEFAULT NULL,
  `no_wa_pasien` varchar(30) DEFAULT NULL,
  `tanggal_konsul` varchar(20) DEFAULT NULL,
  `status_konsul` enum('terjadwal','selesai','batal') DEFAULT 'terjadwal',
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_konsultasi`
--

INSERT INTO `jadwal_konsultasi` (`id_jadwal_konsultasi`, `id_dokter`, `nama_pasien`, `keluhan`, `no_wa_pasien`, `tanggal_konsul`, `status_konsul`, `id_user`) VALUES
(46, 45, 'ronaldo', 'ss', '122', '2025-06-21', 'terjadwal', 19),
(47, 45, 'aa', 'mm', '122', '2025-06-12', 'terjadwal', 19),
(48, 45, 'aa', 'jj', '123', '2025-07-05', 'terjadwal', 19);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `nama` varchar(50) NOT NULL,
  `passwod` varchar(10) NOT NULL,
  `id_user` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`nama`, `passwod`, `id_user`) VALUES
('admin', '123', 17),
('ad', '12', 18),
('haris', '1', 19),
('qw', 'qw', 20),
('sss', '123', 21),
('ads', '123', 22),
('sa', 'sa', 24),
('df', '1', 25),
('dd', 'dd', 30);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id_mail` int(11) NOT NULL,
  `isi_mail` varchar(1000) NOT NULL,
  `judul_mail` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` enum('belum_dibaca','terbaca') DEFAULT 'belum_dibaca'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id_mail`, `isi_mail`, `judul_mail`, `id_user`, `status`) VALUES
(23, '123\r\n', 'halo', 19, 'terbaca'),
(24, '12', '12', 19, 'terbaca'),
(25, '122', '212', 19, 'terbaca'),
(26, 'aaa', 'Halo', 19, 'terbaca'),
(27, '89', '99', 19, 'terbaca'),
(28, '0o', 'kkk', 19, 'terbaca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `dokter_gigi`
--
ALTER TABLE `dokter_gigi`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `jadwal_konsultasi`
--
ALTER TABLE `jadwal_konsultasi`
  ADD PRIMARY KEY (`id_jadwal_konsultasi`),
  ADD KEY `id_dokter` (`id_dokter`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id_mail`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `dokter_gigi`
--
ALTER TABLE `dokter_gigi`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `jadwal_konsultasi`
--
ALTER TABLE `jadwal_konsultasi`
  MODIFY `id_jadwal_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id_mail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal_konsultasi`
--
ALTER TABLE `jadwal_konsultasi`
  ADD CONSTRAINT `jadwal_konsultasi_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter_gigi` (`id_dokter`) ON DELETE CASCADE;

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `logins` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
