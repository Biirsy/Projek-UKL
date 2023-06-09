-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2023 pada 16.24
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mulai_sehat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `perhitungan_kalori`
--

CREATE TABLE `perhitungan_kalori` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idKalori_1` int(11) NOT NULL,
  `idKalori_2` int(11) NOT NULL,
  `idKalori_3` int(11) NOT NULL,
  `idKalori_4` int(11) NOT NULL,
  `totalKalori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perhitungan_kalori`
--

INSERT INTO `perhitungan_kalori` (`id`, `tanggal`, `idKalori_1`, `idKalori_2`, `idKalori_3`, `idKalori_4`, `totalKalori`) VALUES
(13, '2023-06-08', 12, 15, 16, 14, NULL),
(14, '2023-06-08', 19, 1, 1, 1, NULL),
(15, '2023-06-08', 1, 3, 14, 2, NULL),
(16, '2023-06-09', 2, 2, 2, 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `perhitungan_kalori`
--
ALTER TABLE `perhitungan_kalori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `perhitungan_kalori`
--
ALTER TABLE `perhitungan_kalori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
