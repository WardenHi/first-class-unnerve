-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 10:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kependudukan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` int(20) NOT NULL,
  `nama_kecamatan` varchar(255) DEFAULT NULL,
  `tahun` date DEFAULT NULL,
  `kode_kota` int(20) DEFAULT NULL,
  `jumlah_pendudukan` int(255) DEFAULT NULL,
  `batas_kecamatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `nama_kecamatan`, `tahun`, `kode_kota`, `jumlah_pendudukan`, `batas_kecamatan`) VALUES
(100, 'Lembang', '0000-00-00', 2, 225032, ''),
(101, 'Regol', '0000-00-00', 2, 120981, ''),
(102, 'Cisarua', '0000-00-00', 2, 230040, NULL),
(103, 'Parongpong', '0000-00-00', 2, 159230, NULL),
(104, 'Cililin', '0000-00-00', 2, 145012, NULL),
(105, 'Cipeundeuy', '0000-00-00', 2, 200000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kode_kota` int(20) NOT NULL,
  `nik_walikota` int(16) DEFAULT NULL,
  `nama_kota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kode_kota`, `nik_walikota`, `nama_kota`) VALUES
(1, 10, 'Cimahi'),
(2, 9, 'Bandung'),
(3, 8, 'Cileunyi'),
(4, 7, 'Dayeuhkolot'),
(5, 11, 'Kotabaru');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `tgl_lahir` date DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `nik` int(16) NOT NULL,
  `nomor_kecamatan` int(20) DEFAULT NULL,
  `agama` set('Islam','Kristen','Atheis','Konghucu','Katolik','Budhha','Hindu') DEFAULT NULL,
  `jenis_kelamin` enum('Pria','Wanita') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`tgl_lahir`, `nama`, `nik`, `nomor_kecamatan`, `agama`, `jenis_kelamin`) VALUES
('2002-11-01', 'Jajang', 327317101, 102, 'Islam', 'Pria'),
('2002-12-25', 'Pasaribu', 327317102, 102, 'Kristen', 'Pria'),
('2003-02-14', 'Afika', 327317112, 103, 'Atheis', 'Wanita'),
('2003-02-28', 'Fatimah', 327317120, 101, 'Islam', 'Wanita'),
('2003-03-25', 'Jaka', 327317135, 103, 'Islam', 'Pria'),
('2003-02-23', 'Febrian Sulastri', 327317136, 103, 'Atheis', 'Pria'),
('2002-01-12', 'Januar Jamaludin', 327317140, 105, 'Islam', 'Pria'),
('2002-01-12', 'Mei Saturday', 327317142, 102, 'Kristen', 'Wanita'),
('2002-03-11', 'Maret Utami', 327317152, 104, 'Islam', 'Wanita'),
('2003-04-30', 'April Rasya', 327317156, 101, 'Islam', 'Pria');

-- --------------------------------------------------------

--
-- Table structure for table `walikota`
--

CREATE TABLE `walikota` (
  `nik` int(16) NOT NULL,
  `nama_walikota` varchar(50) DEFAULT NULL,
  `lama_jabatan` int(4) DEFAULT NULL,
  `kode_kota` int(20) DEFAULT NULL,
  `tahun_kepimpinan` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `walikota`
--

INSERT INTO `walikota` (`nik`, `nama_walikota`, `lama_jabatan`, `kode_kota`, `tahun_kepimpinan`) VALUES
(7, 'Dadang', 5, 4, 1986),
(8, 'Herman', 5, 3, 1991),
(9, 'Udin', 5, 2, 1996),
(10, 'Jamal', 5, 1, 2001),
(11, 'Kamil', 5, 5, 2008),
(12, 'Karim', 3, 2, 2001),
(13, 'Deden', 4, 4, 1991),
(14, 'Cecep', 2, 3, 1996),
(15, 'Asep', 5, 1, 2006),
(16, 'Iwan', 7, 5, 2013);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `kode_kota` (`kode_kota`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kode_kota`),
  ADD KEY `nik` (`nik_walikota`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `nomor_kecamatan` (`nomor_kecamatan`);

--
-- Indexes for table `walikota`
--
ALTER TABLE `walikota`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `kode_kota` (`kode_kota`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`kode_kota`) REFERENCES `kota` (`kode_kota`);

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `nik` FOREIGN KEY (`nik_walikota`) REFERENCES `walikota` (`nik`);

--
-- Constraints for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD CONSTRAINT `penduduk_ibfk_1` FOREIGN KEY (`nomor_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
