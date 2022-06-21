-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2022 at 10:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik_ittp`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_dosen`
--

CREATE TABLE `detail_dosen` (
  `nidn` char(10) DEFAULT NULL,
  `golongan` char(5) DEFAULT NULL,
  `gaji` bigint(20) DEFAULT NULL,
  `jumlah_anak` int(11) DEFAULT NULL,
  `ayah` varchar(30) DEFAULT NULL,
  `ibu` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_dosen`
--

INSERT INTO `detail_dosen` (`nidn`, `golongan`, `gaji`, `jumlah_anak`, `ayah`, `ibu`) VALUES
('Dsn001', 'A3', 2750000, 0, 'Fajar Asiddiq', 'Jamilah'),
('Dsn002', 'A4', 3100000, 0, 'Alam Anugrah', 'Sita'),
('Dsn003', 'A1', 2500000, 0, 'Bina Hati', 'Harimbi'),
('Dsn004', 'B3', 3400000, 2, 'Cecep Rootie', 'Aisyah'),
('Dsn005', 'C2', 3750000, 1, 'Doni Burhana', 'Remi');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` char(10) NOT NULL,
  `nama_dosen` char(20) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `usia` int(10) DEFAULT NULL,
  `pendidikan` char(20) DEFAULT NULL,
  `fakultas` char(20) DEFAULT NULL,
  `status_pernikahan` enum('N','L') DEFAULT NULL,
  `tanggal_bergabung` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `jenis_kelamin`, `usia`, `pendidikan`, `fakultas`, `status_pernikahan`, `tanggal_bergabung`) VALUES
('Dsn001', 'Andi', 'L', 32, 'S2 Matematika', 'FTII', 'N', '12 Desember 2017'),
('Dsn002', 'Bagus', 'L', 39, 'S2 Ilmu Komputer', 'FTEE', 'N', '14 April 2015'),
('Dsn003', 'Charlie', 'P', 28, 'S2 Sistem Informasi', 'FTII', 'L', '17 Juli 2016'),
('Dsn004', 'Dina', 'P', 26, 'S2 Teknik Industri', 'FTEE', 'L', '13 Maret 2012'),
('Dsn005', 'Erna', 'P', 23, 'S3 Bahasa Jawa', 'FTII', 'N', '09 Januari 2019');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` char(10) NOT NULL,
  `tanggal_krs` date DEFAULT NULL,
  `nim` char(10) DEFAULT NULL,
  `kd_matkul` char(10) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `tanggal_krs`, `nim`, `kd_matkul`, `keterangan`) VALUES
('Krs001', '2019-06-22', 'Mhs001', 'Mk001', 'Ok'),
('Krs002', '2019-06-25', 'Mhs002', 'Mk004', 'Gagal'),
('Krs003', '2019-06-26', 'Mhs003', 'Mk003', 'Sedikit Masalah'),
('Krs004', '2019-06-29', 'Mhs004', 'Mk004', 'Ok'),
('Krs005', '2019-06-26', 'Mhs005', 'Mk005', 'Gagal');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama_mahasiswa` char(20) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `usia` int(10) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `telepon` char(20) DEFAULT NULL,
  `status_pernikahan` enum('N','L') DEFAULT NULL,
  `prodi` char(20) DEFAULT NULL,
  `tanggal_masuk` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`, `jenis_kelamin`, `usia`, `alamat`, `email`, `telepon`, `status_pernikahan`, `prodi`, `tanggal_masuk`) VALUES
('Mhs001', 'Joni', 'L', 24, 'Aceh', 'joni@ittelkom-pwt.ac.id', '08977882345', 'L', 'SI', '12 Juni 2017'),
('Mhs003', 'Cintya', 'P', 23, 'Bandung', 'cintya@ittelkom-pwt.ac.id', '02121235543', 'L', 'DKV', '12 Juni 2017'),
('Mhs004', 'Dina', 'L', 19, 'Jakarta', 'dina@ittelkom-pwt.ac.id', '084321123567', 'L', 'IF', '12 Juni 2019');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kd_matkul` char(10) NOT NULL,
  `nama_matkul` char(10) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `hari_kuliah` char(10) DEFAULT NULL,
  `jam_kuliah` char(10) DEFAULT NULL,
  `ruang_kuliah` char(10) DEFAULT NULL,
  `lama_pertemuan` int(11) DEFAULT NULL,
  `kd_prodi` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kd_matkul`, `nama_matkul`, `sks`, `hari_kuliah`, `jam_kuliah`, `ruang_kuliah`, `lama_pertemuan`, `kd_prodi`) VALUES
('Mk001', 'Basis Data', 2, 'Senin', '10.30', 'IOT102', 100, 'SI'),
('Mk002', 'Kalkulus', 3, 'Rabu', '11.30', 'REK202', 150, 'TE'),
('Mk003', 'Audit', 1, 'Kamis', '14.00', 'IOT203', 50, 'DKV'),
('Mk004', 'Alpro', 2, 'Selasa', '16.00', 'DC101', 100, 'TT'),
('Mk005', 'Agama', 2, 'Senin', '07.30', 'IOT103', 100, 'IF');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliahh`
--

CREATE TABLE `mata_kuliahh` (
  `kd_matkul` char(10) NOT NULL,
  `nama_matkul` char(20) DEFAULT NULL,
  `sks` char(10) DEFAULT NULL,
  `hari_kuliah` char(10) DEFAULT NULL,
  `jam_kuliah` char(10) DEFAULT NULL,
  `ruang_kuliah` char(10) DEFAULT NULL,
  `lama_pertemuan` char(20) DEFAULT NULL,
  `kd_prodi` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliahh`
--

INSERT INTO `mata_kuliahh` (`kd_matkul`, `nama_matkul`, `sks`, `hari_kuliah`, `jam_kuliah`, `ruang_kuliah`, `lama_pertemuan`, `kd_prodi`) VALUES
('Mk001', 'Basis Data', '2', 'Senin', '10.30', 'IOT102', '100', 'SI'),
('Mk002', 'Kalkulus', '3', 'Rabu', '11.30', 'REK202', '150', 'TE'),
('Mk003', 'Audit', '1', 'Kamis', '14.00', 'IOT203', '50', 'DKV'),
('Mk004', 'Alpro', '2', 'Selasa', '16.00', 'DC101', '100', 'TT'),
('Mk005', 'Agama', '2', 'Senin', '07.30', 'IOT103', '100', 'IF');

-- --------------------------------------------------------

--
-- Table structure for table `mengampu`
--

CREATE TABLE `mengampu` (
  `kd_matkul` char(10) DEFAULT NULL,
  `nidn` char(10) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mengampu`
--

INSERT INTO `mengampu` (`kd_matkul`, `nidn`, `keterangan`) VALUES
('Mk001', 'Dsn001', 'Fix'),
('Mk002', 'Dsn001', 'Fix'),
('Mk003', 'Dsn004', 'Sementara'),
('Mk004', 'Dsn005', 'Sementara'),
('Mk005', 'Dsn002', 'Fix');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `kd_prodi` char(10) NOT NULL,
  `nama_prodi` char(40) DEFAULT NULL
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
-- Indexes for table `detail_dosen`
--
ALTER TABLE `detail_dosen`
  ADD KEY `nidn` (`nidn`);

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
  ADD KEY `kd_matkul` (`kd_matkul`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kd_matkul`),
  ADD KEY `kd_prodi` (`kd_prodi`);

--
-- Indexes for table `mata_kuliahh`
--
ALTER TABLE `mata_kuliahh`
  ADD PRIMARY KEY (`kd_matkul`);

--
-- Indexes for table `mengampu`
--
ALTER TABLE `mengampu`
  ADD KEY `nidn` (`nidn`),
  ADD KEY `kd_matkul` (`kd_matkul`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kd_prodi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_dosen`
--
ALTER TABLE `detail_dosen`
  ADD CONSTRAINT `detail_dosen_ibfk_1` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`kd_matkul`) REFERENCES `mata_kuliah` (`kd_matkul`);

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`kd_prodi`) REFERENCES `prodi` (`kd_prodi`);

--
-- Constraints for table `mengampu`
--
ALTER TABLE `mengampu`
  ADD CONSTRAINT `mengampu_ibfk_2` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`),
  ADD CONSTRAINT `mengampu_ibfk_3` FOREIGN KEY (`kd_matkul`) REFERENCES `mata_kuliah` (`kd_matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
