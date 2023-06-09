<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mulai Sehat</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="hitungkal.css">
<body>
    <!-- Navbar -->
    <nav class="navbar">
    <a href="#" class="logo">Mulai Sehat</a>

    <div class="navbar-nav">
        <a href="#" class="home">Home</a>
        <a href="penyakitsd.php" class="penyakit">Penyakit</a>
        <a href="obatsd.php" class="obat">Obat</a>
        <a href="hitungsd.php" class="hitung">Hitung kalori</a>
        <img class="person" src="image/personicon.svg"></img>
    </div>
    <!-- Nav end -->
    <!-- Landing -->
    <!-- Landing end -->
    <div class="table">
<table border="1" class="totalKalori-content">
            <tr>
                <th>No</th>
                <th>Tanggal</th>
                <th>Nama Lauk</th>
                <th>Kalori Lauk</th>
                <th>Nama Pauk</th>
                <th>Kalori Pauk</th>
                <th>Nama Sayur</th>
                <th>Kalori Sayur</th>
                <th>Nama Karbo</th>
                <th>Kalori Karbo</th>
                <th>Total Kalori</th>
            </tr>
        <?php 
        //Select Tabel Buku dari database
            include "conn.php";
            $query_mysql = mysqli_query($mysqli,"SELECT tanggal,kalori1.nama_makanan as nama_kalori1,kalori1.jumlah_kalori as jumlah_kalori1,
            kalori2.nama_makanan as nama_kalori2,kalori2.jumlah_kalori as jumlah_kalori2,
            kalori3.nama_makanan as nama_kalori3,kalori3.jumlah_kalori as jumlah_kalori3,
            kalori4.nama_makanan as nama_kalori4,kalori4.jumlah_kalori as jumlah_kalori4, totalKalori
            FROM perhitungan_kalori 
            LEFT JOIN hitung_kalori as kalori1
            ON perhitungan_kalori.idKalori_1 = kalori1.id_makanan
            LEFT JOIN hitung_kalori as kalori2
            ON perhitungan_kalori.idKalori_2 = kalori2.id_makanan
            LEFT JOIN hitung_kalori as kalori3
            ON perhitungan_kalori.idKalori_3 = kalori3.id_makanan
            LEFT JOIN hitung_kalori as kalori4
            ON perhitungan_kalori.idKalori_4 = kalori4.id_makanan;")or die(mysqli_error());
            $nomor = 1;
            while($data = mysqli_fetch_array($query_mysql)){
        ?>
            <tr>
                <td><?php echo $nomor++; ?></td>
                <td><?php echo $data['tanggal']; ?></td>
                <td><?php echo $data['nama_kalori1']; ?></td>
                <td><?php echo $data['jumlah_kalori1']; ?></td>
                <td><?php echo $data['nama_kalori2']; ?></td>
                <td><?php echo $data['jumlah_kalori2']; ?></td>
                <td><?php echo $data['nama_kalori3']; ?></td>
                <td><?php echo $data['jumlah_kalori3']; ?></td>
                <td><?php echo $data['nama_kalori4']; ?></td>
                <td><?php echo $data['jumlah_kalori4']; ?></td>
                <td><?php echo $data['jumlah_kalori1'] + $data['jumlah_kalori2'] + $data['jumlah_kalori3'] + $data['jumlah_kalori4'];?></td>
                
            </tr>
            <?php } ?>

        </table>
        </div>
    <div class="footer">
    </div>
    <div class="footer-link">
        <a class="flk" href="penyakitsd.php">List Penyakit</a>
        <a class="flo" href="obatsd.php">List Obat</a>
        <a class="fhk" href="hitungsd.php">Hitung Kalori</a>
        <a class="about" href="aboutsd.php">Tentang Kami</a>
    </div>
</body>
</html>