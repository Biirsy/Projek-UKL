<?php
if(isset($_POST['submit'])){
    // jika tombol register di klik
    $tanggal = date("Y/m/d");
    $id_kalori1 = $_POST['Lauk1'];
    $id_kalori2 = $_POST['Lauk2'];
    $id_kalori3 = $_POST['Lauk3'];
    $id_kalori4 = $_POST['karbo'];
    echo($id_kalori1);
    echo($id_kalori2);
    echo($id_kalori3);
    echo($id_kalori4);

    include_once("conn.php");

    // insert to db
    $result = mysqli_query($mysqli, "INSERT INTO perhitungan_kalori(tanggal,idKalori_1,idKalori_2,idKalori_3,idKalori_4) VALUES('$tanggal','$id_kalori1','$id_kalori2','$id_kalori3','$id_kalori4')");
    header("location:perhitungan.php");
}
?>