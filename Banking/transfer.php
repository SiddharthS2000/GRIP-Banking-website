<?php

error_reporting(~E_NOTICE);

include('transfer.html');
$conn=mysqli_connect("localhost","root","","bank");
$sender = $_POST["sender"];
$receiver = $_POST["receiver"];
$amount = $_POST["amount"];

$result = mysqli_query($conn,"SELECT * FROM customer where Name = '$sender' ");
$result2 = mysqli_query($conn,"SELECT * FROM customer where Name = '$receiver' ");
$row = mysqli_fetch_array($result);
	if ($row['balance']>=$amount) {
			$senderfinal = $row['balance'] - $amount;	
			mysqli_query($conn,"UPDATE customer SET balance='$senderfinal' where Name = '$sender' ");
			$row2 = mysqli_fetch_array($result2);
			$receiverfinal = $row2['balance'] + $amount;
			mysqli_query($conn,"UPDATE customer SET balance='$receiverfinal' where Name = '$receiver' ");
			date_default_timezone_set('Asia/Kolkata');
			$date = date("Y/m/d"); 


			$time = date("h:i:sa");
			mysqli_query($conn,"INSERT into transfer values ('$date','$time','$sender', '$receiver', '$amount') ");
	}

?>