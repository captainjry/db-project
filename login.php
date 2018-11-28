<?php
  session_start();  
  include 'connect.php';
  include 'header.php';
if(isset($_POST['submit'])){
    // header('dbproject_php/index.php');
    $_SESSION['username'] = $_POST['username'];
    $_SESSION['password'] = $_POST['password'];
    $username=$_SESSION['username'];
    $password=$_SESSION['password'];
    if(empty($username) || empty($password)){
        echo '<script language="javascript">';
        echo 'alert("Please fill in your information correctly!")';
        echo '</script>';
        echo '<script> location.replace("index.php"); </script>';

    }else{
        $sql = "SELECT * FROM customer WHERE customer_username = '$username'";
        $sqla = "SELECT * FROM staff WHERE staff_username = '$username'";
        $result = mysqli_query($mysqli,$sql);
        $resultCheck = mysqli_num_rows($result);
        $resulta = mysqli_query($mysqli,$sqla);
        $resultChecka = mysqli_num_rows($resulta);
        if($resultCheck < 1  && $resultChecka < 1){
        echo '<script language="javascript">';
        echo 'alert("Login Error!")';
        echo '</script>';
        echo '<script> location.replace("index.php"); </script>';
    
        }
        else{
            if($row = mysqli_fetch_assoc($result)){
                $hashedPwd = $password;
                if(strcmp($hashedPwd,$row['customer_password']) != 0){
                    echo '<script language="javascript">';
                    echo 'alert("Wrong Password")';
                    echo '</script>';
                    echo '<script> location.replace("index.php"); </script>';

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
            else if ($rowa = mysqli_fetch_assoc($resulta)){
                $hashedPwd = $password;
                if(strcmp($hashedPwd,$rowa['staff_password']) != 0 ){
                    echo '<script language="javascript">';
                    echo 'alert("Wrong Password")';
                    echo '</script>';
                    echo '<script> location.replace("index.php"); </script>';
                }
                else {
                    echo '<script language="javascript">';
                    echo 'alert("Login Successful!")';
                    echo '</script>';
                    $_SESSION['s_username']=$rowa['staff_username'];
                    $_SESSION['s_password']=$rowa['staff_password'];
                    $_SESSION['s_staffid']=$rowa['staff_id'];
                    $_SESSION['s_email']=$rowa['staff_email'];
                    $_SESSION['s_fname']=$rowa['staff_Fname'];
                    $_SESSION['s_lname']=$rowa['staff_Lname'];
                    echo '<script> location.replace("index.php"); </script>';
                }
            }         
            else{
                echo '<script language="javascript">';
                echo 'alert("Login Error!")';
                echo '</script>';
            }
            
        }
    }

}
    include 'footer.php';
?>