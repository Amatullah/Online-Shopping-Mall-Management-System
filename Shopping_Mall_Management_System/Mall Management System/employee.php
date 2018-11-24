<html>
<body> 
<LINK REL="STYLESHEET" HREF="style.css" TYPE="text/css">
</STYLE>

<p>Employee Details:</p><br>

<?php
$db = mysqli_connect('localhost','root','admin@123','Mall')
or die('Error connecting to MYSQL server.');

$query = "SELECT * FROM Employee;";

if($result = mysqli_query($db, $query)){
    if(mysqli_num_rows($result) > 0){
         echo "<table>";
            echo "<tr>";
                echo "<th>Employee-ID</th>";
                echo "<th>Salary </th>";
		echo "<th>Job </th>";
                echo "<th>Timings </th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['Emp_ID'] . "</td>";
                echo "<td>" . $row['salary'] . "</td>";
		echo "<td>" . $row['job'] . "</td>";
                echo "<td>" . $row['timings'] . "</td>";
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
<a href="homepage.html"><input type="submit" class="btn" value="Back to Home Page!">
</body>
</html>
