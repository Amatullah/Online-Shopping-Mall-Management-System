<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body> 
<LINK REL="STYLESHEET" HREF="style.css" TYPE="text/css">
</STYLE>


<?php
$db = mysqli_connect('localhost','root','admin@123','Mall')
or die('Error connecting to MYSQL server.');
?>

<?php

$query = "SELECT * FROM Item;";

if($result = mysqli_query($db, $query)){
    if(mysqli_num_rows($result) > 0){
         echo "<table>";
            echo "<tr>";
                echo "<th>Shop-ID</th>";
                echo "<th>Item-ID </th>";
		echo "<th>Price/Peice </th>";
                echo "<th>Quantity </th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['S_ID'] . "</td>";
                echo "<td>" . $row['Item_ID'] . "</td>";
		echo "<td>" . $row['price'] . "</td>";
                echo "<td>" . $row['quantity'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        mysqli_free_result($result);  // Free result set
    } 
    else{
        echo "NO RECORDS FOUND!";
    }

} 
else{
    echo "ERROR: COULD NOT EXECUTE: $sql1. " . mysqli_error($db);
}

mysqli_close($db);
?>
<br>
<a href="shop_owner.php"><input type="submit" class="btn" value="Back to Shop Owner Page!">

</body>
</html>
