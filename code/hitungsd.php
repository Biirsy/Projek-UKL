<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mulai Sehat</title>
    <link rel="stylesheet" href="style.css">
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
    <!-- Content -->
    <div class="kontenhitung">
         <img class="food" src="image/food.png">
         <h1 class="kh1">Hitung Kalori</h1>
         <button type="button" onclick="document.location='hitung_kalori.php'">Mulai</button>
    </div>
<!-- End Content -->
        <div class="footer">
        <h1 class="cr">2023 Mulai Sehat All Rights Reserved</h1>
    </div>
    <div class="footer-link">
        <a class="flk" href="penyakitsd.php">List Penyakit</a>
        <a class="flo" href="obatsd.php">List Obat</a>
        <a class="fhk" href="hitung_kalori.php">Hitung Kalori</a>
        <a class="about" href="aboutsb.php">Tentang Kami</a>
    </div>

</body>
</html>