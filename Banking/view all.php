<!DOCTYPE html>
<html>
<head>
	<title>Online Banking Application|View all</title>
  <link rel="stylesheet" href="styling.css">	

</head>
<body>

<header>
	<center>
		<h1>ONLINE BANKING APPLICATION</h1>
	</center>
	<button onclick="location.href='home.html'">HOME</button>
	<button onclick="location.href='view all.php'">VIEW ALL</button>
	<button onclick="location.href='select one.html'">SELECT ONE</button>
	<button onclick="location.href='transfer.html'">TRANSFER</button>
</header>
<center>
<div>

<?php
$conn=mysqli_connect("localhost","root","","bank");

$result = mysqli_query($conn,"SELECT * FROM customer ORDER BY id");
echo "<table border='1'>";
echo "<tr> <th>Id</th>";
echo "<th>Name</th>";
echo "<th>Email</th>";
echo "<th>Balance</th>";
echo "</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['id'] . "</td>";
echo "<td>" . $row['Name'] . "</td>";
echo "<td>" . $row['email'] . "</td>";
echo "<td>" . $row['balance'] . "</td>";
echo "</tr>";
}
echo "</table>";	
?>

</div>
</center>

</body>
</html>