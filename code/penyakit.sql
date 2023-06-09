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
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `nama_virus` varchar(1000) DEFAULT NULL,
  `gejala` varchar(1000) DEFAULT NULL,
  `penanganan` varchar(1000) DEFAULT NULL,
  `idobat_fk` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `nama_virus`, `gejala`, `penanganan`, `idobat_fk`) VALUES
(1, 'Demam', 'Nyeri kepala, keringat dingin, menggigil, batuk, dehidrasi, nyeri tenggorokan, nyeri telinga, dan diare.', 'Minum banyak air putih, karena demam dapat menyebabkan kehilangan cairan dan dehidrasi, Kamu perlu beristirahat yang cukup untuk pulih, karena beraktivitas dapat meningkatkan suhu tubuh, serta minum obat yang dianjurkan oleh dokter.', 1),
(2, 'Flu', 'Demam, pilek, hidung tersumbat, dan sakit kepala. Meskipun sama dengan gejala batuk pilek biasa, gejala flu terasa lebih parah dan sering kali menyerang tiba-tiba.', 'Flu ringan bisa diatasi dengan banyak beristirahat, mengonsumsi makanan sehat yang mengandung vitamin C, dan banyak minum. Namun, bila gejalanya berat, segera lakukan pemeriksaan ke dokter agar diberikan obat untuk mempercepat kesembuhan dan mencegah komplikasi.', 2),
(3, 'Diare', 'Gejala diare yang utama adalah buang air besar dengan tinja yang encer, yang bisa mengandung lendir atau darah. Gejala lain yang juga sering dialami yaitu perut mulas, mual atau muntah, pusing dan lemas, kulit terasa kering, dan demam', 'Pengobatan utama diare adalah untuk mencegah dehidrasi. Penderita dapat meminum oralit, sup encer, dan air putih, untuk mengganti cairan tubuh yang hilang akibat diare.\r\n\r\nSelain itu, konsumsi makanan lunak dan tidak pedas, suplemen probiotik, dan obat antidiare yang bisa didapatkan di apotek, juga disarankan untuk mempercepat pemulihan diare.\r\n\r\nPada bayi yang masih menyusu, pemberian ASI tetap dilakukan meskipun bayi diare.', 13),
(4, 'Dismenore', 'Gejala utama dismenore adalah kram di perut bagian bawah. Gejala ini merupakan hal yang normal dan tidak perlu dikhawatirkan. Seiring bertambahnya usia, dismenore akan menghilang secara bertahap.', 'Dismenore dapat diatasi secara mandiri dengan memberikan kompres hangat di perut, mandi air hangat, atau mengonsumsi obat pereda nyeri. Namun, jika dismenore terasa parah, pengobatan perlu dilakukan oleh dokter.', 8),
(5, 'Cacingan', 'Tanda-tandanya amat beragam, tergantung jenis cacing yang menginfeksi. Namun, gejala umumnya meliputi Feses mengandung cacing, Kulit kemerahan, gatal dan ruam. Bahkan, beberapa orang melihat bentuk cacing pada kulit. Mengalami diare lebih dari dua minggu.\r\nSembelit berkepanjangan. Perut kembung dan bengkak.\r\nPenurunan berat badan tanpa alasan yang jelas, Anus terasa gatal, terutama pada malam hari. Sering mengalami reaksi alergi pada kulit. Sering kelelahan. Nyeri sendi dan otot Terhambatnya tumbuh kembang anak.  Mengalami kaki gajah atau filariasis. ', 'Pengobatan lini pertamanya yakni mengonsumsi obat cacing selama satu sampai tiga hari. Bukan cuma pengidapnya saja, anggota keluarga yang serumah juga perlu mengonsumsi obat tersebut untuk memutus rantai penularan. Jenis obatnya tergantung tipe cacing, misalnya albendazole, mebendazole, dan pirantel pamoat.', 12),
(6, 'Mata Merah', 'Mata merah merupakan gejala dari beragam penyakit yang menyerang mata.', 'Hindari mengobati mata merah menggunakan obat tetes mata tanpa resep dari dokter. Hal ini karena obat tetes mata yang dijual bebas tidak diperbolehkan untuk banyak jenis penyakit mata, seperti konjungtivitis, keratitis, dan glaukoma.', 17),
(7, 'Mabuk Perjalanan', 'Beberapa tanda dan gejala akibat mabuk perjalanan adalah Pusing, Sakit kepala, Kulit pucat, Keringat dingin, Sulit konsentrasi, Nafas cepat atau terengah-engah, Gelisah, Produksi air liur meningkat, Mual dan muntah', 'Mabuk perjalanan bukan kondisi yang serius dan bisa diatasi dengan penanganan mandiri, misalnya Duduk di kursi terdepan atau dekat jendela jika memungkinkan, Turunkan sandaran kursi sampai senyaman mungkin dan pejamkan mata, Tarik dan hembuskan napas perlahan, Jaga agar tubuh tetap hangat dengan memakai jaket jika kendaraan dingin,\r\nHirup aroma yang berasal dari bahan alami, seperti daun mint, jahe, atau lavender, Hisap permen rasa mint atau jahe, Minum air putih yang cukup.', 20),
(8, 'Sariawan', 'Sariawan dapat disebabkan oleh beberapa kondisi seperti cedera, infeksi virus, dan penyakit autoimun', 'Umumnya, sariawan tidak perlu diobati dan akan sembuh dengan sendirinya dalam 1–2 minggu. Pasien bisa melakukan penanganan secara mandiri di rumah untuk meredakan nyeri, misalnya dengan mengompres bagian yang terasa sakit dengan es batu.\r\n\r\nJika sariawan tidak juga membaik, pasien dianjurkan untuk melakukan pemeriksaan ke dokter, agar mendapatkan pengobatan yang sesuai dengan penyebab sariawan yang dialami.', 16),
(9, 'Batuk', 'Batuk umumnya disertai dengan gejala lain, seperti pilek atau hidung tersumbat, sakit tenggorokan, mengi, sesak napas, dan perut mulas. Berdasarkan lama terjadinya, batuk dapat berlangsung kurang dari 3 minggu sampai lebih dari 8 minggu.', 'Selain dengan mengonsumsi obat batuk, ada upaya mandiri yang bisa dilakukan untuk meredakan batuk. Beberapa cara tersebut adalah dengan beristirahat yang cukup, minum banyak air putih, dan mengonsumsi madu.', 4),
(10, 'Panu', 'Ketika seseorang terserang panu, maka tubuhnya akan mengalami beberapa keluhan. Berikut gejala-gejala yang umumnya dialami pengidap panu:\r\n\r\nArea kulit dengan diskolorasi, biasanya pada bagian punggung, dada, leher, dan lengan atas, yang tampak lebih gelap atau terang.\r\nKondisi gatal ringan.\r\nKulit terasa kering, gatal, dan mungkin bersisik.\r\nKulit menebal.\r\nPerubahan warna pada kulit, menjadi lebih terang atau gelap dibandingkan kulit di sekitarnya.', 'Jika tinea versikolor parah atau tidak bereaksi terhadap obat antijamur yang dijual bebas, mungkin diperlukan obat resep dokter, dalam bentuk topikal maupun oral. Setelah perawatan selesai, warna kulit mungkin tetap tidak merata selama beberapa minggu, atau bahkan berbulan-bulan. ', 18),
(11, 'Mag', 'Gejala mag yang paling sering timbul adalah rasa tidak nyaman atau nyeri di perut bagian atas (sekitar ulu hati), rasa panas seperti terbakar di dada, perut kembung, sering bersendawa, mulut terasa asam, cepat kenyang saat makan, rasa mual,\r\nmuntah, kehilangan nafsu makan, penurunan berat badan', 'Penaganan tergantung pada penyebab dan tingkat keparahan gejala. Apabila gejalanya ringan, perubahan gaya hidup mungkin sudah bisa meredakannya. Berikut adalah gaya hidup untuk mengatasi sakit maag:\r\n\r\nKurangi makanan berlemak dan pedas.\r\nKurangi konsumsi minuman beralkohol dan berkafein.\r\nTidur setidaknya selama 7 jam setiap malam juga bisa membantu meredakan kondisi ini.\r\nBerolahraga secara teratur dan berhenti merokok.', 3),
(12, 'Sakit Gigi', 'Tingkat keparahan sakit gigi sangat beragam, mulai dari nyeri ringan yang hanya menimbulkan rasa tidak nyaman, hingga nyeri parah yang tidak tertahankan. Nyeri akibat sakit gigi pun dapat terasa tajam, berdenyut, atau seperti ditusuk-tusuk.', 'Jika mengalami sakit gigi, sebaiknya segera temui dokter gigi untuk mencari tahu penyebabnya agar dapat diobati dengan tepat.', 10);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`),
  ADD KEY `idobat_fk` (`idobat_fk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD CONSTRAINT `penyakit_ibfk_1` FOREIGN KEY (`idobat_fk`) REFERENCES `obat` (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
