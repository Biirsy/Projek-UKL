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
        <a href="sdh_login.php" class="home">Home</a>
        <a href="penyakitsd.php" class="penyakit">Penyakit</a>
        <a href="obatsd.php" class="obat">Obat</a>
        <a href="hitungsd.php" class="hitung">Hitung kalori</a>
        <img class="person" src="image/personicon.svg"></img>
    </div>

    <div class="hitungkal">
        <h1 class="hk1">Yuk Mulai Menghitung Kalori Mu !!</h1>
        <h2 class="hk2">Apa saja yang kamu makan hari ini ?</h2>
        <img class="dahar" src="image/makan.png">
    </div>

    <div class="choice">
        <?php
        $mysqli = NEW mysqli ('localhost','root','','mulai_sehat');

        $resultSet = $mysqli->query("SELECT nama_makanan FROM hitung_kalori");
        ?>

        <select name="Lauk1" class="lauk1">
        <?php
        while($rows = $resultSet->fetch_assoc()){
            $namaFood = $rows['nama_makanan'];
            echo "<option value='$namaFood'>$namaFood</option>";
        }
        ?>
        </select>
    </div>
    <div class="choice">
        <?php
        $mysqli = NEW mysqli ('localhost','root','','mulai_sehat');

        $resultSet = $mysqli->query("SELECT nama_makanan FROM hitung_kalori");
        ?>

        <select name="Lauk2" class="lauk2">
        <?php
        while($rows = $resultSet->fetch_assoc()){
            $namaFood = $rows['nama_makanan'];
            echo "<option value='$namaFood'>$namaFood</option>";
        }
        ?>
        </select>
    </div>
    <div class="choice">
        <?php
        $mysqli = NEW mysqli ('localhost','root','','mulai_sehat');

        $resultSet = $mysqli->query("SELECT nama_makanan FROM hitung_kalori");
        ?>

        <select name="Lauk3" class="lauk3">
        <?php
        while($rows = $resultSet->fetch_assoc()){
            $namaFood = $rows['nama_makanan'];
            echo "<option value='$namaFood'>$namaFood</option>";
        }
        ?>
        </select>
    </div>
    <div class="choice">
        <?php
        $mysqli = NEW mysqli ('localhost','root','','mulai_sehat');

        $resultSet = $mysqli->query("SELECT nama_makanan FROM hitung_kalori");
        ?>

        <select name="karbo" class="karbo">
        <?php
        while($rows = $resultSet->fetch_assoc()){
            $namaFood = $rows['nama_makanan'];
            echo "<option value='$namaFood'>$namaFood</option>";
        }
        ?>
        </select>
    </div>
    <button type="button" class="mulaihitung" onclick="document.location='perhitungan.php'">Hitung Kalori</button>
            <div class="footer">
        <h1 class="cr">2023 Mulai Sehat All Rights Reserved</h1>
    </div>
    <div class="footer-link">
        <a class="flk" href="login.php">List Penyakit</a>
        <a class="flo" href="login.php">List Obat</a>
        <a class="fhk" href="login.php">Hitung Kalori</a>
        <a class="about" href="aboutsb.php">Tentang Kami</a>
    </div>
</body>
</html>
