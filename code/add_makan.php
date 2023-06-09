<html>
    
    <head>
    <h1>Create Data Baru</h1>
    </head>

    <body>
        <h3>Data Kalori</h3>
	    <form action="add_makan.php" method="post" name="form1">
            <table width="25%" border="0">
                <tr> 
                    <td>Nama Makanan</td>
                    <td><input type="text" name="makan"></td>
                </tr>
                <tr> 
                    <td>Jumlah Kalori</td>
                    <td><input type="text" name="jumlahkal"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="Add"></td>
                </tr>
                <?php
 
    // Check If form submitted, insert form data into users table.
    if(isset($_POST['submit'])) {
        $namaMakans= $_POST['makan'];
        $jumlahKals = $_POST['jumlahkal'];
        echo($namaMakans);
        // include database connection file
        include_once("conn.php");
                
        // Insert user data into table
        $result = mysqli_query($mysqli, 
        "INSERT INTO hitung_kalori(nama_makanan,jumlah_kalori) 
        VALUES('$namaMakans','$jumlahKals')");

        
        // Show message when user added
       // echo "Data added successfully. <a href='index.php'>View Data Buku</a>";
        header("location:view_makan.php");

    }
    ?>
            </table>
        </form>
    </body>
</html>

