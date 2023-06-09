<?php

include("conn.php");

// cek apakah tombol simpan sudah diklik atau blum?
if(isset($_POST['simpan'])){

    $id = $_POST['idmakan'];
    $namaMakan=$_POST['nama'];
    $jumlah_kal=$_POST['jumlah'];

    // buat query update
    $result = mysqli_query($mysqli, "UPDATE hitung_kalori SET nama_makanan='$namaMakan',jumlah_kalori='$jumlah_kal'WHERE id_makanan=$id");
    header('Location: view_makan.php');

    // $query = mysqli_query($db, $sql);

    // apakah query update berhasil?
    // if( $query ) {
    //     // kalau berhasil alihkan ke halaman list-siswa.php
    //     header('Location: list-siswa.php');
    // } else {
    //     // kalau gagal tampilkan pesan
    //     die("Gagal menyimpan perubahan...");
    // }


} else {
    die("Akses dilarang...");
}

?>