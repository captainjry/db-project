<?php

	$userid = $_GET['id']; // user id
	require_once('connect.php');
	if(isset($userid)) {
		$q="DELETE FROM customer where customer_id=$userid";
		$q = strtolower($q);
			if(!$mysqli->query($q)){
				echo "DELETE failed. Error: ".$mysqli->error ;
		   }
		   $mysqli->close();
		   //redirect
		   header("Location: staff_deluser.php");
	}
?>
