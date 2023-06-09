<?php

include("conn.php");

// kalau tidak ada id di query string
if( !isset($_GET['id_makanan']) ){
    header('Location:view_makan.php');
}
$id_makan = $_GET['id_makanan'];
 
// Fetech user data based on id
$result = mysqli_query($mysqli, "SELECT * FROM hitung_kalori WHERE id_makanan='$id_makan'");
 
while($user_data = mysqli_fetch_array($result))
{
    $namaMakan = $user_data['nama_makanan'];
    $jumlah_kal = $user_data['jumlah_kalori'];
}

?>


<!DOCTYPE html>
<html>
<head>
    <title>Edit Nama Makanan / Jumlah Kalori</title>
</head>

<body>

    <form method="POST" action="prosesedit.php">
        <table border="0">
            <tr> 
                <td>Nama Makanan</td>
                <td><input type="text" name="nama" value="<?php echo $namaMakan;?>"></td>
            </tr>
            <tr> 
                <td>Jumlah Kalori</td>
                <td><input type="text" name="jumlah" value="<?php echo $jumlah_kal;?>"></td>
            </tr>
            <tr>
                <td><input type="hidden" name="idmakan" value=<?php echo $_GET['id_makanan'];?>></td>
                <td><input type="submit" name="simpan" value="simpan"></td>
            </tr>
        </table>
    </form>
    </body>
</html>