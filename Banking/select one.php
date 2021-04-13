<?php 
	include('select one.html');
	$conn=mysqli_connect("localhost","root","","bank");
	$name = $_POST['name'];
	$result = mysqli_query($conn,"SELECT * FROM customer where Name = '$name' ");

echo "<br><center><div><table border='1'>
		  <tr> <th>Id</th>
		  <th>Name</th>
		  <th>Email</th>
		  <th>Balance</th>
		  </tr>";

while($row = mysqli_fetch_array($result))
{
		
echo "<tr>
	 <td>" . $row['id'] . "</td>
	 <td>" . $row['Name'] . "</td>
	 <td>" . $row['email'] . "</td>
	 <td>" . $row['balance'] . "</td>
	 </tr>
	";

}
echo "</table></div></center>";

?>