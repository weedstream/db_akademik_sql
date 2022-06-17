-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 11:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` int(11) NOT NULL,
  `nama_dosen` varchar(128) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `pendidikan` varchar(128) DEFAULT NULL,
  `fakultas` varchar(128) DEFAULT NULL,
  `status_pernikahan` varchar(128) DEFAULT NULL,
  `tanggal_bergabung` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `jenis_kelamin`, `usia`, `pendidikan`, `fakultas`, `status_pernikahan`, `tanggal_bergabung`) VALUES
(111, 'Andi', 'L', 30, 'S2 Matematika', 'FTII', 'M', '2017-12-12'),
(112, 'Bagus', 'L', 39, 'S2 Ilmu Komputer', 'FTTE', 'M', '2015-04-14'),
(113, 'Charlie', 'P', 28, 'S2 Sistem Informasi', 'FTII', 'BM', '2016-07-17'),
(114, 'Dian', 'P', 26, 'S2 Teknik Industri', 'FTTE', 'BM', '2012-03-13'),
(115, 'Erna', 'L', 23, 'S3 Bahasa Jawa', 'FTII', 'M', '2019-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `tanggal_krs` date DEFAULT NULL,
  `nim` int(11) DEFAULT NULL,
  `kd_matkul` int(11) DEFAULT NULL,
  `keterangan` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `tanggal_krs`, `nim`, `kd_matkul`, `keterangan`) VALUES
(1101, '2019-06-22', 17111, 101, 'OK'),
(1102, '2019-06-25', 17112, 104, 'Gagal'),
(1103, '2019-06-26', 17113, 103, 'Sedikit Masalah'),
(1104, '2019-06-29', 17114, 104, 'OK'),
(1105, '2019-06-26', 17115, 105, 'Gagal');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama_mahasiswa` varchar(128) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `alamat` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `telepon` int(13) DEFAULT NULL,
  `status_pernikahan` varchar(128) DEFAULT NULL,
  `kd_prodi` varchar(11) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`, `jenis_kelamin`, `usia`, `alamat`, `email`, `telepon`, `status_pernikahan`, `kd_prodi`, `tanggal_masuk`) VALUES
(17111, 'Joni', 'L', 24, 'Aceh', 'joni@ittelkom-pwt.ac.id', 2147483647, 'TM', '', '2017-06-12'),
(17112, 'Bakrie', 'L', 20, 'Jambi', 'krie@ittelkom-pwt.ac.id', 2147483647, 'TM', '', '2018-06-12'),
(17113, 'Cintya', 'P', 23, 'Bandung', 'cintya@ittelkom-pwt.ac.id', 2147483647, 'TM', '', '2017-06-12'),
(17114, 'Dina', 'L', 19, 'Jakarta', 'dina@ittelkom-pwt.ac.id', 2147483647, 'TM', '', '2019-06-12'),
(17115, 'Elisa', 'L', 19, 'Surabaya', 'elisa@ittelkom-pwt.ac.id', 2147483647, 'TM', '', '2019-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kd_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(128) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `hari_kuliah` varchar(11) DEFAULT NULL,
  `jam_kuliah` varchar(12) DEFAULT NULL,
  `ruang_kuliah` varchar(11) DEFAULT NULL,
  `lama_pertemuan` int(11) DEFAULT NULL,
  `kd_prodi` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kd_matkul`, `nama_matkul`, `sks`, `hari_kuliah`, `jam_kuliah`, `ruang_kuliah`, `lama_pertemuan`, `kd_prodi`) VALUES
(101, 'Basis Data', 2, 'Senin', '10.30', 'IOT102', 100, ''),
(102, 'Kalkulus', 3, 'Rabu', '11.30', 'REK202', 150, ''),
(103, 'Audit', 1, 'Kamis', '14.00', 'IOT203', 50, ''),
(104, 'Alpro', 2, 'Selasa', '16.00', 'DC101', 100, ''),
(105, 'Agama', 2, 'Senin', '07.30', 'IOT103', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `mengampu`
--

CREATE TABLE `mengampu` (
  `kd_matkul` int(11) DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL,
  `ket` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mengampu`
--

INSERT INTO `mengampu` (`kd_matkul`, `nidn`, `ket`) VALUES
(101, 111, 'Fix'),
(102, 111, 'Fix'),
(103, 114, 'Sementara'),
(104, 115, 'Sementara'),
(105, 112, 'Fix');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `kd_prodi` varchar(11) NOT NULL,
  `nama_prodi` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`kd_prodi`, `nama_prodi`) VALUES
('DKV', 'Desain Komunikasi Visual'),
('IF', 'Informatika'),
('SI', 'Sistem Informasi'),
('TE', 'Teknik Elektro'),
('TT', 'Teknik Telekomunikasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `kd_matkul` (`kd_matkul`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kd_matkul`);

--
-- Indexes for table `mengampu`
--
ALTER TABLE `mengampu`
  ADD KEY `kd_matkul` (`kd_matkul`),
  ADD KEY `nidn` (`nidn`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kd_prodi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`kd_matkul`) REFERENCES `mata_kuliah` (`kd_matkul`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `mengampu`
--
ALTER TABLE `mengampu`
  ADD CONSTRAINT `mengampu_ibfk_1` FOREIGN KEY (`kd_matkul`) REFERENCES `mata_kuliah` (`kd_matkul`),
  ADD CONSTRAINT `mengampu_ibfk_2` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
