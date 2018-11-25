<?php
  session_start();  
?>
<?php
  include 'connect.php';
  include 'header.php';
if(isset($_POST['submit'])){
    header('dbproject_php/index.php');
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
                $hashedPwdCheck = password_verify($hashedPwd,$row['customer_password']);
                if($hashedPwdCheck == false){
                    echo '<script language="javascript">';
                    echo 'alert("Login Error!")';
                    echo '</script>';
                }
                else if($hashedPwdCheck==true){
                    $_SESSION['c_username']=$row['customer_username'];
                    $_SESSION['c_password']=$row['customer_password'];
                    $_SESSION['c_customerid']=$row['customer_id'];
                    $_SESSION['c_email']=$row['customer_email'];
                    $_SESSION['c_fname']=$row['customer_fname'];
                    $_SESSION['c_lname']=$row['customer_lname'];
                    echo '<script language="javascript">';
                    echo 'alert("Login Successful!")';
                    echo '</script>';
                } 
            else{
                echo '<script language="javascript">';
                echo 'alert("Login Error!")';
                echo '</script>';
            }
            
        }
    }
}
?>
 <?php
    include 'footer.php';
  ?>
