<?php
  session_start();  
  include 'connect.php';
  include 'header.php';
if(isset($_POST['submit'])){
    // header('dbproject_php/index.php');
    $username =$_POST['username'];
    $password =$_POST['password'];
    if(empty($username) || empty($password)){
        echo '<script language="javascript">';
        echo 'alert("Please fill in your information correctly!")';
        echo '</script>';
    }else{
        $sql = "SELECT * FROM customer WHERE customer_username = '$username'";
        $result = mysqli_query($mysqli,$sql);
        $resultCheck = mysqli_num_rows($result);
        if($resultCheck < 1){
        echo '<script language="javascript">';
        echo 'alert("Login Error!")';
        echo '</script>';    
        }
        else{
            if($row = mysqli_fetch_assoc($result)){
                $hashedPwd = $password;
                if(strcmp($hashedPwd,$row['customer_password']) != 0 ){
                    echo '<script language="javascript">';
                    echo 'alert("Login Error!")';
                    echo '</script>';
                }
                else {
                    echo '<script language="javascript">';
                    echo 'alert("Login Successful!")';
                    echo '</script>';
                    $_SESSION['c_username']=$row['customer_username'];
                    $_SESSION['c_password']=$row['customer_password'];
                    $_SESSION['c_customerid']=$row['customer_id'];
                    $_SESSION['c_email']=$row['customer_email'];
                    $_SESSION['c_fname']=$row['customer_fname'];
                    $_SESSION['c_lname']=$row['customer_lname'];
                    echo '<script> location.replace("index.php"); </script>';

                }
            } 
            else {
                echo '<script language="javascript">';
                echo 'alert("Login Error!")';
                echo '</script>';
            }
            
        }
    }

}
    include 'footer.php';
?>