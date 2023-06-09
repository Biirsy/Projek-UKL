<?php
// include database connection file
include_once("conn.php");
 
// Get id from URL to delete that user
$id = $_GET['id_makanan'];
 
// Delete user row from table based on given id
$result = mysqli_query($mysqli, "DELETE FROM hitung_kalori WHERE id_makanan=$id");
 
// After delete redirect to Home, so that latest user list will be displayed.

header("location:view_makan.php");
?>