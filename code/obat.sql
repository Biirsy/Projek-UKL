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
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) DEFAULT NULL,
  `jobat` int(3) NOT NULL,
  `aturan_pakai` varchar(1000) DEFAULT NULL,
  `dosis` varchar(1000) DEFAULT NULL,
  `komposisi` varchar(500) NOT NULL,
  `manfaat` varchar(355) NOT NULL,
  `efek_samping` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `jobat`, `aturan_pakai`, `dosis`, `komposisi`, `manfaat`, `efek_samping`) VALUES
(1, 'Paracetamol', 1, 'Orang dewasa dapat mengonsumsi 1 atau 2 tablet 500 miligram paracetamol setiap 4-6 jam. Jangan lebih dari 4 gram atau 8 tablet 500 miligram dalam waktu 24 jam. Anak-anak di bawah 16 tahun disarankan untuk mengambil dosis yang lebih rendah, tergantung pada usia dan berat badan mereka.', '0,5–1 gram setiap 4–6 jam hingga maksimum 4 gram per hari', 'Setiap tablet mengandung Paracetamol 500 mg', 'Meredakan rasa nyeri dan menurunkan demam.', 'Sakit perut, mual, dan muntah'),
(2, 'Tolak Angin Flu', 2, 'Setelah makan. Obat dapat langsung diminum atau dapat dicampur dengan setengan air hangat.', 'Dewasa dan Anak diatas 12 tahun: 1 sachet, 3 kali per hari.', 'Oryza sativa 20%, Foeniculli Fructus 10%, Isorae Fructus 10%, Caryophylli Folium 10%, Menthae arventis herba 10 %, Zingiberis Rhizoma, Amomi Fructus, Myristicae Semen, Burmanni Cortex, Centella Herba, Parkiae Semen, Usneae Thallus. Ekstrak Vallerinae Radix 0.1 g, Ekstrak Echinaceae 0.1 g, Ekstrak Panax Radix, Ekstrak Phillantus Herba', 'Produk ini digunakan untuk membantu meringankan gejala flu, membantu meringankan masuk angin, serta membantu memelihara daya tahan tubuh.\n', 'Dapat menyebabkan sakit kepala, kegelisahan, susah tidur, penglihatan kabur. Dosis yang sangat kuat dapat menyebabkan peningkatan denyut jantung, penyempitan pembuluh darah jantung dan penurunan gerak usus.'),
(3, 'Promag', 1, 'Dianjurkan untuk meminum obat ini segera pada saat timbul gejala dan dilanjutkan 1-2 jam sebelum makan atau sesudah makan dan sebelum tidur. Obat ini dapat diminum dengan air atau dikunyah langsung.', 'Dewasa dan anak > 12 tahun: 3-4 kali sehari 1-2 tablet. Anak-anak 6 - 12 tahun : 3 - 4 kali sehari 0.5 - 1 tablet. Atau menurut petunjuk dokter.\r\n', 'Hydrotalcite 200 mg, Mg(OH)2 150 mg, Simethicone 50 mg', 'Obat ini digunakan untuk mengurangi gejala-gejala yang berhubungan dengan kelebihan asam lambung, gastritis, tukak lambung, tukak usus 12 jari. Gejala seperti mual, nyeri lambung, nyeri ulu hati, kembung dan perasaan penuh pada lambung.', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis. Efek samping yang mungkin terjadi dalam penggunaan obat adalah: sembelit, diare, mual, muntah'),
(4, 'OBH Combi', 1, 'Dikonsumsi sesudah makan', 'Dewasa dan anak diatas 12 tahun : 3 kali sehari, 3 sendok takar (15 ml).', 'Tiap 5 ml sirup mengandung: Succus Liquiritiae 167 mg, Paracetmaol 150 mg, Ammonium Chloride 50 mg, Pseudoephedrin HCl 10 mg, Chlorpheniramin Maleate 1.33 mg.\r\n', 'OBH COMBI PLUS BATUK FLU merupakan obat batuk dengan kandungan OBH, Paracetamol, Ephedrine HCl, dan Chlorphenamine maleat yang digunakan untuk meredakan batuk disertai gejala-gejala flu seperti demam, sakit kepala, hidung tersumbat, dan bersin-bersin. OBH bekerja sebagai ekspektoran atau peluruh dahak, Paracetamol digunakan sebagai pereda demam dan saki', 'Mengantuk, gangguan pencernaan, insomnia, gelisah, eksitasi, tremor, takikardia, aritmia, mulut kering.\r\n'),
(5, 'Sanmol Forte', 1, 'Dikonsumsi sebelum atau sesudah makan.', 'Dewasa dan anak usia lebih dari 12 tahun : 1 tablet, diberikan 3-4 kali sehari.\r\n', 'Paracetamol 650 mg', 'Obat ini digunakan untuk meringankan rasa sakit pada keadaan sakit kepala, sakit gigi dan menurunkan demam. Sanmol Forte bekerja pada pusat pengatur suhu di hipotalamus untuk menurunkan suhu tubuh (antipiretik) serta menghambat sintesis prostaglandin sehingga dapat mengurangi nyeri ringan sampai sedang (analgetik).', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis. Efek samping yang mungkin terjadi dalam penggunaan obat adalah: Hematologi, reaksi kulit, reaksi alergi lainnya, kerusakan hati (penggunaan jangka panjang dan over'),
(6, 'Demacolin', 1, 'Sebelum atau sesudah makan.', 'Dewasa : 1 tablet 3 kali per hari. Anak 6-12 tahun : 0.5 tablet 3 kali sehari.\r\n', 'Paracetamol 500 mg, Pseudoefedrin HCL 7.5 mg, Klorfeniramin maleat 2 mg.\r\n', 'Obat ini bekerja sebagai analgesik-antipiretik, antihistamin dan dekongestan hidung, dimana obat ini digunakan untuk meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin.\n', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis. Efek samping yang mungkin terjadi dalam penggunaan obat adalah: mengantuk, gangguan pencernaan, insomnia, gelisah, eksitasi, tremor, takikardi, aritmia ventrikuler'),
(7, 'Fu Fang E Jiao Jiang', 2, 'Baik diminum sebelum maupun setelah makan.', '3 x sehari 20 ml', 'E-Jiao (Colla Corini Asini), Dangshen (Radix Codonopsis), Shu Di Huang (Rehmannia), Shan Zha (Fructus crataegi)', 'Membantu memelihara stamina dan membantu meredakan sakit kepala', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis.'),
(8, 'Dismeno', 2, 'Diberikan sesuai dengan petunjuk dosis penggunaan, leaflet/brosur, dokter atau apoteker', '3x1 kapsul sehari.', 'DLBS1442 Phaleria macrocarpa', 'Herbal ini digunakan untuk membantu meredakan nyeri yang terjadi pada saat haid.', 'belum terdapat data keamanan untuk obat ini'),
(9, 'Vermint', 2, 'Sebelum / sesudah makan', 'Dewasa: 2 kapsul, 3 kali per hari Anak-anak: 1 kapsul, 3 kali per hari.', 'Ekstrak lumbricus rubellus 250 mg', 'Membantu meredakan demam', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis.'),
(10, 'Burung Kakak Tua Obat Sakit Gigi ', 2, 'Jepit kapas dengan pinset. Tuangkan obat secukupnya pada kapas. Letakkan kapas tersebut pada gigi yang sakit. Ulangi pemakaian bila perlu.', 'Sesuai kebutuhan\r\n', 'Glycerin 0.65 ml, ethanol 0.97 ml, creosote 0.17 ml, oleum caryophylli 0.03 ml', 'Membantu meringankan rasa nyeri pada sakit gigi, misalnya gigi berlubang\r\n', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis.\r\n'),
(11, 'Jamu Iboe Uratan Herbal Supplement ', 2, 'Sesudah makan\r\n', 'Untuk pencegahan : 1 kali sehari 2 kapsul Untuk pengobatan : 2 kali sehari 2 kapsul', 'Jintan Hitam (Nigellae Semen),Keningar (Burmani Cortex),Jahe (Zingiberis Rhizoma),Cengkeh (Caryophylli Flos),Temulawak (Curcumae Rhizoma),Kunyit (Curcumae domesticae Rhizoma),Sambiloto (Andrographidis Herba),Anyang-anyang (Elaeocarpi Fructus),Adas (Foeniculi Fructus)', 'Membantu mengurangi nyeri dan rasa pegal linu pada persendian yang disebabkan kelebihan asam urat.', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis.\r\n'),
(12, 'Combantrin Jeruk Sirup', 1, 'Dapat dikonsumsi sebelum atau sesudah makan\r\n', 'Anak usia 2-6 tahun: 5-10 ml, diberikan sekali. Anak usia 6-12 tahun: 10-15 ml, diberikan sekali. Di atas usia 12 tahun: 15-20 ml, diberikan sekali.', 'Setiap sendok takar (5 ml) mengandung Pirantel Pamoat setara dengan Pirantel base 125 mg.', 'Obat cacing yang digunakan untuk mengatasi infeksi cacing kremi (enterobius vermicularis), cacing gelang (ascaris lumbricoides), cacing tambang (ancylostoma duodenale), cacing tambang (necator americanus), cacing trichostrongylus colubriformis dan trichostrongylus orientalis.', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis. Efek samping yang mungkin terjadi dalam penggunaan obat adalah: Anoreksia (Nafsu makan hilang), mual, muntah, diare, sakit kepala, pusing, rasa mengantuk,'),
(13, 'Entrostop', 1, 'Setelah buang air besar', 'Dewasa dan Anak > 12 tahun : 2 tablet setiap kali setelah diare, maximum 12 tablet per hari (24 jam). Anak 6-12 tahun : 1 tablet setiap kali setelah diare, maximum 6 tablet per hari (24 jam).', 'Attapulgite koloid aktif 650 mg dan pectin 50 mg.', 'Untuk mengatasi diare yang tidak diketahui penyebabnya dengan jelas.\n', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis. Efek samping yang mungkin terjadi dalam penggunaan obat adalah: konstipasi biasanya ringan dan bersifat sementara.'),
(14, 'Herocyn Bedak Kulit', 1, 'untuk pencegahan taburkan pada bagian tubuh setelah mandi, untuk pengobatan taburkan dan gosokkan pada bagian tubuh yang terdapat gangguan kulit beberapa kali sehari.', 'Pengobatan : Taburkan dan gosokkan pada bagian tubuh yang terdapat gangguan kulit beberapa kali sehari. Pencegahan : Taburkan pada bagian tubuh setelah mandi.\r\n', 'Bals peruv 2%, Zinc oxide 3,5%, Precip Sulph 1,42 %, Salicylic acid 0,8 %, Camphor 0,31 %, Menthol 0,47 %, Deodorant q.s., Preservative q.s., Talc ad 100 % w/w.', 'Bedak ini digunakan untuk mengobati gangguan kulit seperti biang keringat dan gatal-gatal.\n', 'Dapat terjadi reaksi hipersensitifitas seperti dermatitis.'),
(15, 'Aloclair Plus Gel', 1, 'Oleskan hingga menutup seluruh ulkus/lesi rongga mulut. Hindari kontak langsung antara ujung tube dengan lesi. Jangan menyentuh lesi dengan lidah min 2 menit agar terbentuk selaput pelindung. Hindari makan & minum min 1 jam setelah pengolesan.', 'Aplikasikan 1-2 tetes gel pada area yang sakit, 3-4 kali sehari\r\n', 'Aqua, Polyvinylpyrrolidone (PVP), maltodextrin, propylene glycol, PEG-40 hydrogenated castor oil, xanthan gum, potassium sorbate, sodium benzoate, sodium hyaluronate, aroma, benzalkonium chloride, disodium EDTA, sodium saccharin, dipotassium glycyrrhizate, aloe barbadensis', 'Membantu mengatasi ulkus aftosa, stomatitis aftosa, lesi minor, ulkus karena perlukaan dan trauma yang disebabkan penggunaan kawat gigi atau gigi palsu.\n', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis.'),
(16, 'Betadine Throat Spray', 1, 'Semprotkan kedalam rongga mulut dan Keluarkan sisa cairan. Tidak perlu dibilas dengan berkumur.', '1x semprot, gunakan 3 kali per hari.\r\n', 'Povidone Iodine 0.45 %\r\n', 'Spray mulut untuk meredakan gejalan sakit tenggorokan, sariawan, gusi bengkak, bau mulut dan nafas tidak segar.', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis. Efek samping yang dapat terjadi yaitu reaksi alergi spserti kemerahan, iritasi, bengkak, dan gatal-gatal.\r\n'),
(17, 'Insto Cool Eye Drops', 1, 'Diteteskan pada mata yang merah atau teriritasi.', '2-3 tetes pada setiap mata 3-4 kali sehari atau sesuai anjuran dokter', 'Naphazoline Hydrochloride 0.12 mg', 'Meredakan iritasi & kemerahan pada mata', 'Rebound vasodilatasi atau kongesti (penggunaan jangka panjang/sering). Mata terasa pedih, rasa terbakar, dan reaksi hyperemia mungkin terjadi pada pemakaian berlebihan.'),
(18, 'Kalpanax Krim', 1, 'Oleskan pada kulit yang terinfeksi setiap selesai mandi dan sebelum tidur malam.', 'Dioleskan ke bagian yang terinfeksi saat kering 2 kali sehari (pagi dan malam hari) atau saat terasa gatal. Walaupun gejala gatal sudah hilang, oleskan sampai 2 minggu pemakaian.', 'Miconazole nitrate 2%', 'Mengatasi gatal jamur kulit dan penyakit infeksi jamur kulit lainnya seperti kutu air, panu, kadas dan kurap langsung tuntas sampai ke akarnya\n', 'Ruam, pruritus, maserasi kulit, inflamasi, hipopigmentasi, urtikaria, eritema.'),
(20, 'Antimo 50 mg', 1, 'Sesudah makan', 'Dewasa dan anak di atas 12 tahun: 1 tablet (50 mg), sehari tidak lebih dari 8 tablet (400 mg). Anak usia 8-12 tahun : 0.5 tablet (25 mg), sehari tidak lebih dari 3 tablet (150 mg). Diminum 30 menit sebelum berpergian menggunakan kendaraan, bila perlu dapat diulang tiap 4 jam.\r\n', 'Dimenhidrinat 50 mg\r\n', 'Antivertigo, anti mabok, pening dan mual selama perjalanan dengan kendaraan bermotor, kapal laut dan pesawat udara, baik untuk dewasa maupun anak-anak\r\n', 'Mengantuk, lesu, pusing, dan gangguan keseimbangan (terutama pada anak-anak), sakit kepala, mulut kering, gangguan pergerakan, pandangan kabur, gangguan berkemih, gangguan saluran pencernaan seperti mual, diare, muntah, dan nyeri ulu hati, detak jantung tidak beraturan atau berdebar-debar.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `fk_jenis` (`jobat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `fk_jenis` FOREIGN KEY (`jobat`) REFERENCES `jenis_obat` (`id_jenis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
