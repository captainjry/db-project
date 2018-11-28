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
	$q = "update `customer` set `customer_username`='".$_POST['username']."',`customer_password`='".$_POST['password']."',`customer_fname`='".$_POST['fname']."',`customer_lname`='".$_POST['lname']."',`customer_email`='".$_POST['email']."',`customer_address`='".$_POST['address']."',`customer_phone`= '".$_POST['tel']."' where customer_id='".$_SESSION['c_customerid']."'";
	if(!$mysqli->query($q)){
		echo "Update failed: ". $mysqli->error;
	}else{
		header("Location: profile.php");
	}
}
?>
























