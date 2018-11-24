<!DOCTYPE html>
<title> MALL SYSTEM </title>
<body>
<LINK REL="STYLESHEET" HREF="style.css" TYPE="text/css">
</STYLE>

<div class="content">
<form action="" method="post">
<p> Sign up as? </p>
	<p>
	<input type = "radio" name = "role" value = "cust"> Customer 
	<input type = "radio" name = "role" value = "cust"> Employee 
	<input type = "radio" name = "role" value = "cust"> Shop Owner 
	<input type = "radio" name = "role" value = "cust"> Mall Owner <br></br>
	</p>
	<p>
	    <label>ID:</label>
            <input type="text" name="ID">
	</p>

	<p>
	    <label>Username:</label>
            <input type="text" name="username">
	</p>

	<p>
	    <label>Password:</label>
            <input type="password" name="pass_word">
	</p>
	

        <p>
            <label>Aadhar Card No:</label>
            <input type="text" name="Aadhar_card">
        </p>

	<p>
            <label>First Name:</label>
            <input type="text" name="first_name">
        </p>

        <p>
            <label>Last Name:</label>
            <input type="text" name="last_name">
        </p>

	<p>
            <label>Email id:</label>
            <input type="text" name="email_id">
        </p>
	
	<p>
            <label>DOB(YYYY-MM-DD):</label>
            <input type="text" name="DOB">
        </p>       

        <p>
            <label>Age:</label>
            <input type="text" name="age">
        </p>

	<p>
            <label>Phone No:</label>
            <input type="text" name="phoneno">
        </p>
          
	<p>
	    <label>Address:</label>
	    <input type="text" name="address">
	</p><br>

	<input type="submit" class="btn" name= "Proceed" value="Proceed">

</form>
</div>

<?php
	if(isset($_POST['Proceed'])){

		$db = mysqli_connect('localhost','root','admin@123','Mall')
		 or die('Error connecting to MySQL server.');


		$ID = mysqli_real_escape_string($db, $_REQUEST['ID']);
		$username = mysqli_real_escape_string($db, $_REQUEST['username']);
		$pass_word = mysqli_real_escape_string($db, $_REQUEST['pass_word']);
		$Aadhar_card = mysqli_real_escape_string($db, $_REQUEST['Aadhar_card']);
		$first_name = mysqli_real_escape_string($db, $_REQUEST['first_name']);
		$last_name = mysqli_real_escape_string($db, $_REQUEST['last_name']);
		$email_id = mysqli_real_escape_string($db, $_REQUEST['email_id']);
		$DOB = mysqli_real_escape_string($db, $_REQUEST['DOB']);
		$age = mysqli_real_escape_string($db, $_REQUEST['age']);
		$phoneno = mysqli_real_escape_string($db, $_REQUEST['phoneno']);
		$address = mysqli_real_escape_string($db, $_REQUEST['address']);

		$sql = "INSERT INTO Person VALUES ('$ID', '$username','$pass_word', '$Aadhar_card', '$first_name','$last_name','$email_id', '$DOB' ,'$age','$phoneno' ,'$address')";

		if(mysqli_query($db, $sql))
			header("Location: homepage.html");
		 else
		    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($db). '<br />'. '<br />';
		mysqli_close($db);
	}
?>

</body>
</html>

