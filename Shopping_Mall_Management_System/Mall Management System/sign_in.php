<!DOCTYPE html>
<title> MALL SYSTEM </title>
<body>
<LINK REL="STYLESHEET" HREF="style.css" TYPE="text/css">
</STYLE>

<div class="content">
<form action="" method="post">
<p> Sign in as : </p><br>
<input type = "radio" name = "role" value="cust"> Customer <br>
<input type = "radio" name = "role" value="emp"> Employee <br>
<input type = "radio" name = "role" value="s_owner"> Shop Owner <br>
<input type = "radio" name = "role" value="m_owner"> Mall Owner <br><br>
<p>	
	<label>Username</label><br>
        <input class="input" type="text" name="username">
</p>
<p>	
	<label>Password</label><br>
        <input class="input" type="password" name="pass_word">
</p><br>

<input type="submit" class="btn" name= "Proceed" value="Proceed">

</form>
</div>
<?php
	if(isset($_POST['Proceed'])){
		if(isset($_POST['role'])){
			$db = mysqli_connect('localhost','root','admin@123','Mall')
				or die('Error connecting to MYSQL server.');
	
			$username = mysqli_real_escape_string($db, $_REQUEST['username']);
			$sql = "select * from Person WHERE username ='$username'" ;
			if($result = mysqli_query($db, $sql)){
				if(mysqli_num_rows($result) == 1){
					$row = mysqli_fetch_array($result);
					$pass_word = mysqli_real_escape_string($db, $_REQUEST['pass_word']);
					if($row['pass_word']== $pass_word) {
						if($_POST['role']=='cust')
                                			header("Location: customer.php");

						if($_POST['role']=='emp')
							header("Location: employee.php");

						if($_POST['role']=='s_owner')
                                			header("Location: shop_owner.php");
					
						if($_POST['role']=='m_owner')
                                                        header("Location: mall_owner.php");	
					}
					else
						echo "Wrong Password!". '<br />';
				}
				else
					echo "Wrong Username!".'<br  />';
			}				

			else 
	   			echo "ERROR: Could not able to execute $sql. " . mysqli_error($db). '<br />'. '<br />';


			mysqli_close($db);
		}
		else 
			echo "Select Radio Button!".'<br />';
			
	}
?>

<br>
<div class="content">
<a href="homepage.html"><input type="submit" class="btn" value="Back to Home Page!">
</div>
</body>
</html>
