<html>
    <head> 
		<link rel="stylesheet" href="admin.css">
    </head>
    
    <body>
	
        <h3>Data Makanan</h3>
		
	    <table border="1" class="table">
		    <tr>
    			<th>ID Makanan</th>
    			<th>Nama Makanan</th>
    			<th>Jumlah Kalori</th>		
				<th>Perintah</th>
		    </tr>           
        <?php 
        //Select Tabel Buku dari database
            include "conn.php";
		    $query_mysql = mysqli_query($mysqli,"SELECT * FROM hitung_kalori")or die(mysqli_error());
		    $nomor = 1;
		    while($data = mysqli_fetch_array($query_mysql)){
		?>
            <tr>
    			<td><?php echo $nomor++; ?></td>
    			<td><?php echo $data['nama_makanan']; ?></td>
    			<td><?php echo $data['jumlah_kalori']; ?></td>
				<td><a href='editmakan.php?id_makanan=<?php echo $data['id_makanan'];?>'>Edit</a>
					<a href='delete_makan.php?id_makanan=<?php echo $data['id_makanan'];?>'>Delete</a>
					<a href="add_makan.php">Add</a>
				</td>
            </tr>
            <?php } ?>
            
        </table>

    </body>
</html>