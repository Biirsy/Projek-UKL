<?php
require 'function.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="register.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
       <!-- Navbar -->
       <nav class="navbar">
    <a href="#" class="logo">Mulai Sehat</a>

    <div class="navbar-nav">
        <a href="sblm_login.php" class="home">Home</a>
        <a href="login.php" class="penyakit">Penyakit</a>
        <a href="login.php" class="obat">Obat</a>
        <a href="login.php" class="hitung">Hitung kalori</a>
        <a href="login.php" class="lgn">Login</a>
    </div>
    <!-- Nav end -->
    <div class="form-container">
        <form action="" method="post">
            <h3>Daftar Sekarang</h3>
            <?php
            if(isset($error)){
                foreach($error as $error){
                    echo '<span class="error-msg ">'.$error.'</span>';
                };
            };
            ?>
            <input type="text" name="username" required placeholder="Masukkan Username">
            <input type="password" name="password" required placeholder="Masukkan Kata Sandi">
            <input type="submit" name="submit" value="Daftar Sekarang" class="form-btn">
            <p>Sudah Punya Akun ? <a href="login.php">Login Sekarang</a></p>
        </form>
    </div>
</body>
</html>