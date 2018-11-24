<!DOCTYPE html>
<title> MALL SYSTEM </title>
<body>
<LINK REL="STYLESHEET" HREF="style.css" TYPE="text/css">
</STYLE>

<div class="content">
<form action="" method="post">
<p> ITEM DETAILS </p>
	
	<p>
	    <label>Item ID:</label>
            <input type="text" name="Item_ID">
	</p>
	<p>
	    <label>Price/Peice:</label>
            <input type="number" name="price">
	</p>
        <p>
            <label>Quantity:</label>
            <input type="text" name="quantity">
        </p>
	<p>
            <label>Shop ID:</label>
            <input type="text" name="S_ID">
        </p>
<input type="submit" class="btn" name= "Proceed" value="Submit">
</form>
</div>


<?php

if(isset($_POST['Proceed'])) {
	$db = mysqli_connect('localhost','root','admin@123','Mall')
	or die('Error connecting to MYSQL server.');
	
	$Item_ID = mysqli_real_escape_string($db, $_REQUEST['Item_ID']);
	$price = mysqli_real_escape_string($db, $_REQUEST['price']);
	$quantity = mysqli_real_escape_string($db, $_REQUEST['quantity']);
	$S_ID = mysqli_real_escape_string($db, $_REQUEST['S_ID']);

	// attempt insert query execution

	$sql = "INSERT INTO Item VALUES ('$Item_ID', '$price','$quantity', '$S_ID')";

	if(mysqli_query($db, $sql)) {
	     header("Location: shop_owner.php");
	} 
	else {
	    echo "ERROR: Could not able to execute $sql. " . mysqli_error($db). '<br />'. '<br />';
	}


	mysqli_close($db);
}

?>

<br>
<div class="content">
<a href="shop_owner.php"><input type="submit" class="btn" value="Back to Shop Owner Page!">

</div>
</body>
</html>

