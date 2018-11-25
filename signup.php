<?php
  include 'connect.php';
  include 'header.php';
if(isset($_POST['submit'])){
	$username =$_POST['username'];
  $password =$_POST['password'];
  $passwordRepeat =$_POST['passwordrepeat'];
	$email =$_POST['email'];
  if (empty($username)||empty($password)||empty($email)||empty($passwordRepeat)){
    echo '<script language="javascript">';
    echo 'alert("Please fill in your information correctly!")';
    echo '</script>';
  }
  else if(!filter_var($email, FILTER_VALIDATE_EMAIL) && !preg_match("/^[a-zA-Z0-9]*$/",$username)){
    echo '<script language="javascript">';
    echo 'alert("Invalid E-mail and Username format!")';
    echo '</script>';
  }
  else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
    echo '<script language="javascript">';
    echo 'alert("Invalid E-mail format!")';
    echo '</script>';
  }
  else if(!preg_match("/^[a-zA-Z0-9]*$/",$username)){
    echo '<script language="javascript">';
    echo 'alert("Invalid Username format!")';
    echo '</script>';
  }
  else if ($password!==$passwordRepeat){
    echo '<script language="javascript">';
    echo 'alert("Password Does not match")';
    echo '</script>';   
  }
  else{
    $sql = "SELECT customer_username FROM customer WHERE customer_username=?";
    $stmt = mysqli_stmt_init($mysqli);
    if (!mysqli_stmt_prepare($stmt,$sql)){
      echo '<script language="javascript">';
      echo 'alert("SQL EROR!")';
      echo '</script>';
    }
    else{
      mysqli_stmt_bind_param($stmt,"s",$username);
      mysqli_stmt_execute($stmt);
      mysqli_stmt_store_result($stmt);
      $resultCheck=mysqli_stmt_num_rows($stmt);
      if($resultCheck>0){
        echo '<script language="javascript">';
        echo 'alert("SQL Error!")';
        echo '</script>';
      }
      else{
        $sql="INSERT INTO customer(customer_username, customer_password , customer_email) VALUES(?, ?, ?)";  
        $stmt = mysqli_stmt_init($mysqli);
        if(!mysqli_stmt_prepare($stmt,$sql)){
          echo '<script language="javascript">';
          echo 'alert("SQL ERROR!")';
          echo '</script>';
        }
        else{
            $hashedPwd = password_hash($password, PASSWORD_DEFAULT);
            mysqli_stmt_bind_param($stmt,"sss",$username,$hashedPwd,$email);
            mysqli_stmt_execute($stmt);
            echo '<script language="javascript">';
            echo 'alert("Sign Up Successfully")';
            echo '</script>';
            
          }
        
      }
    }
  }
  mysqli_stmt_close($stmt);
  mysqli_close($mysqli);
}
else{

}
?>
  <div class="login-block">
    <div class="container boxes">
      <div class="row">
        <div class="col-md-4">
          <div class="topic">
            <h2 class="text-center">Sign up</h2>
          </div>
          <form class="login-form" method="POST" action="signup.php">
            <div class="form-group">
              <label for="exampleInputEmail1" class="text-uppercase">Username</label>
              <input type="text" class="form-control" name="username" placeholder="Username">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1" class="text-uppercase">Password</label>
              <input type="password" class="form-control" name="password" placeholder="Password">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1" class="text-uppercase">Re-enter Password</label>
              <input type="password" class="form-control" name="passwordrepeat" placeholder="Re-enter Password">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1" class="text-uppercase">Email</label>
              <input type="text" class="form-control" name="email" placeholder="E-mail">
            </div>
            <div class="form-check">
              <button type="submit" class="btn btn-success float-right" name="submit">Sign Up</button>
            </div>
          </form>
        </div>
        <div class="col-md-8 banner-sec">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="https://static.pexels.com/photos/33972/pexels-photo.jpg" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                  <div class="banner-text">
                    <h2>This is Heaven</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                      labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="https://images.pexels.com/photos/7097/people-coffee-tea-meeting.jpg"
                  alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                  <div class="banner-text">
                    <h2>This is Heaven</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                      labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="https://images.pexels.com/photos/872957/pexels-photo-872957.jpeg"
                  alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                  <div class="banner-text">
                    <h2>This is Heaven</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                      labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php
  include 'footer.php';
?>