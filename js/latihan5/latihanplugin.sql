-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Feb 2021 pada 04.30
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihanplugin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_admin` varchar(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `ketik_password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_admin`, `username`, `password`, `ketik_password`) VALUES
('1', 'nurul', 'lakalaka', 'lakalaka'),
('2', 'siti', 'laka45', 'laka45'),
('3', 'ulumi', 'lakalaka45%', 'lakalaka45%');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reseller`
--

CREATE TABLE `reseller` (
  `username` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `no_hp` char(14) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `id_admin` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reseller`
--

INSERT INTO `reseller` (`username`, `email`, `no_hp`, `alamat`, `id_admin`) VALUES
('', 'ayip@gmail.com', '08884011019', 'kedungjati', '01'),
('', 'iktafal@gmail.com', '08884003789', 'tegal', '02'),
('ayip', 'ayip@gmail.com', '0874246567', 'tegal', '1'),
('iktafal', 'iktafal@gmail.com', '087574839', 'tegal', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `reseller`
--
ALTER TABLE `reseller`
  ADD KEY `id_admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
