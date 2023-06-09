<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mulai Sehat</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="list.css">
<body>
    <!-- Navbar -->
    <nav class="navbar">
    <a href="sdh_login.php" class="logo">Mulai Sehat</a>

    <div class="navbar-nav">
        <a href="sdh_login.php" class="home">Home</a>
        <a href="penyakitsd.php" class="penyakit">Penyakit</a>
        <a href="obatsd.php" class="obat">Obat</a>
        <a href="hitungsd.php" class="hitung">Hitung kalori</a>
        <img class="person" src="image/personicon.svg"></img>
    </div>
    <!-- Nav end -->
    <!-- List -->
    <div class="listp">
        <a class="op1" href="apg.php">Aloclair Plus Gel</a>
        <a class="op2" href="antimo.php">Antimo 50 mg</a>
        <a class="op3" href="bts.php">Betadine Throat Spray</a>
        <a class="op4" href="bkt.php">Burung Kakak Tua Obat Sakit Gigi </a>
        <a class="op5" href="combatrin.php">Combantrin Jeruk Sirup</a>
        <a class="op6" href="demacolin.php">Demacolin</a>
        <a class="op7" href="dismeno.php">Dismeno</a>
        <a class="op8" href="entro.php">Entrostop</a>
        <a class="op9" href="insto.php">Insto Cool Eye Drops</a>
        <a class="op10" href="obh.php">OBH Combi</a>
        <a class="op11" href="parace.php">Paracetamol</a>
        <a class="op12" href="promag.php">Promag</a>
        <a class="op13" href="tolakangin.php">Tolak Angin Flu</a>
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

include("conn.php");

if (isset($_POST["submit"])) {
    $str = $_POST["search"];
    $sth = $con->prepare("SELECT * FROM 'obat' WHERE nama_obat = '$str'");

    $sth->setFetchMode(PDO:: FETCH_OBJ);
    $sth-> execute();

    if($row = $sth->fetch())
    {
        ?>
        <br><br<><br>
        <table>
            <tr>
                <th>Nama Obat</th>
                <th>Aturan Pakai</th>
                <th>Dosis</th>
                <th>Komposisi</th>
                <th>Manfaat</th>
                <th>Efek Samping</th>
            </tr>
            <tr>
                <td><?php echo $row->nama_obat; ?></td>
                <td><?php echo $row->aturan_pakai; ?></td>
                <td><?php echo $row->dosis; ?></td>
                <td><?php echo $row->komposisi; ?></td>
                <td><?php echo $row->manfaat; ?></td>
                <td><?php echo $row->efek_samping; ?></td>
            </tr>
        </table>
<?php
}

    else{
        echo "Tidak Ada";
    }
}
?>