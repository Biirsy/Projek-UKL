-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2023 pada 16.23
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
-- Struktur dari tabel `hitung_kalori`
--

CREATE TABLE `hitung_kalori` (
  `id_makanan` int(11) NOT NULL,
  `nama_makanan` varchar(100) DEFAULT NULL,
  `jumlah_kalori` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hitung_kalori`
--

INSERT INTO `hitung_kalori` (`id_makanan`, `nama_makanan`, `jumlah_kalori`) VALUES
(2, '100 Gram / 2 Potong Tempe', 190),
(3, '100 Gram Dada Ayam', 165),
(4, '100 Gram Paha Ayam', 177),
(5, '100 Gram / 2 Potong Tahu', 76),
(6, '100 Gram Bebek', 337),
(7, '100 Gram Bandeng', 123),
(8, '100 Gram Lele', 105),
(9, '100 Gram Sarden', 110),
(10, '100 Gram Salmon', 208),
(11, '1 Ekor Mujair', 128),
(12, '1 Potong Roti Gandum', 80),
(13, '100 Gram Kentang', 87),
(14, '100 Gram Daging Sapi', 250),
(15, '100 Gram Daging Kambing', 143),
(16, '100 Gram Daging Domba', 294),
(17, '1 Bungkus Mie Instan', 380),
(18, '100 Gram Telur', 155),
(19, '100 Gram / 3 Lembar Roti', 264),
(20, '1 Buah Donat', 198),
(21, '1 Buah Siomay', 51),
(22, '100 Gram Dimsum', 112),
(23, '1 Buah Pisang', 88),
(24, '1 Buah Pentol', 40),
(25, '1 Buah Apel', 52),
(26, '100 Gram Melon', 33),
(27, '100 Gram Semangka', 30),
(28, '1 Buah Durian Utuh', 900),
(29, '100 Gram Lontong', 144),
(30, '100 Gram Daging Babi', 242);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hitung_kalori`
--
ALTER TABLE `hitung_kalori`
  ADD PRIMARY KEY (`id_makanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hitung_kalori`
--
ALTER TABLE `hitung_kalori`
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
