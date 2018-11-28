<?php 
 
  if(!isset($_SESSION)) 
  { 
      session_start(); 
  }
  else
  {
      session_destroy();
      session_start(); 
  }
include 'connect.php';
if(isset($_POST['update']))
{
	$q = "update `customer` set `customer_address`='".$_POST['address']."' where customer_id='".$_SESSION['c_customerid']."'";
	if(!$mysqli->query($q)){
		echo "Update failed: ". $mysqli->error;
	}else{
		header("Location: paymentmethod.php");
	}
}
?>























