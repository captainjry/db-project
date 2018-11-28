<?php

	$bookid = $_GET['id']; // user id
	require_once('connect.php');
	if(isset($bookid)) {
		$q="DELETE FROM book where ISBN=$bookid";
		$q = strtolower($q);
			if(!$mysqli->query($q)){
				echo "DELETE failed. Error: ".$mysqli->error ;
		   }
		   $mysqli->close();
		   //redirect
		   header("Location: staff_addbook.php");
	}
?>