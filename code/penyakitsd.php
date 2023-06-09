<?php
    if($_GET['q'] == 'Telusuri Disini'){
        header('Location:penyakitsd.php');
    }
    if($_GET['q'] !== ''){
    $con = mysqli_connect('localhost','root','','mulai_sehat');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mulai Sehat</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="list.css">
    <script type="text/javascript">
        function active(){
            var sb =  document.getElementById('searchbox');
            if(sb.value == 'Telusuri Disini'){
                sb.value = ''
                sb.placeholder = 'Telusuri Disini'
            }
        }
        function inactive(){
            var sb = document.getElementById('searchbox');
            if(sb.value == ''){
                sb.placeholder = ''
                sb.value = 'Telusuri Disini'
            }
        }
    </script>
<body>
    <!-- Navbar -->
    <nav class="navbar">
    <a href="sdh_login.php" class="logo">Mulai Sehat</a>

    <div class="navbar-nav">
        <a href="sdh_login.php" class="home">Home</a>
        <a href="#" class="penyakit">Penyakit</a>
        <a href="obatsd.php" class="obat">Obat</a>
        <a href="hitungsd.php" class="hitung">Hitung kalori</a>
        <img class="person" src="image/personicon.svg"></img>
    </div>
    <!-- Nav end -->
    <!-- List -->
    <div class="listp">
        <a class="op1" href="batuk.php">Batuk</a>
        <a class="op2" href="cacingan.php">Cacingan</a>
        <a class="op3" href="demam.php">Demam</a>
        <a class="op4" href="diare.php">Diare</a>
        <a class="op5" href="dismenore.php">Dismenore</a>
        <a class="op6" href="flu.php">Flu</a>
        <a class="op7" href="mabukper.php">Mabuk Perjalanan</a>
        <a class="op8" href="mag.php">Mag</a>
        <a class="op9" href="matamerah.php">Mata Merah</a>
        <a class="op10" href="panu.php">Panu</a>
        <a class="op11" href="sakitgg.php">Sakit Gigi</a>
        <a class="op12" href="sariawan.php">Sariawan</a>
    </div>
    <!-- End List -->
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
<?php
    }else{
        header('Location:penyakitsd.php');
    }
?>