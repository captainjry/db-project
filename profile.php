<?php 
  session_start();
  include 'header.php';
  include 'connect.php';
  

  $sql = "SELECT * FROM customer WHERE customer_id='".$_SESSION['c_customerid']."'";
  $result = mysqli_query($mysqli,$sql);
  $resultCheck = mysqli_num_rows($result);

  if($resultCheck >0){
    while ($row = mysqli_fetch_assoc($result)){
?>
  <link rel="stylesheet" href="css/profile.css">
  <div class="container">
    <div class="box">
      <div class="row">
        <div class="col-12 text-center topic">
          <h2>User Profile</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-12 text-center">
          <form>
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <form action='updateprofile.php' method ='POST'>
            <div class="form-row">
              <div class="form-group col-md-6">
              
                <label for="inputEmail4">Username</label>
                <input type="text" class="form-control" name="username" placeholder="Username" value=<?php echo $row['customer_username']; ?>>
              </div>
              <div class="form-group col-md-6">
                <label for="inputPassword4">Password</label>
                <input type="text" class="form-control" name="password" placeholder="Password"value=<?php echo $row['customer_password'];?>>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputEmail4">First Name</label>
                <input type="text" class="form-control" name="fname" placeholder="First Name" value=<?php echo $row['customer_fname'];?>>
              </div>
              <div class="form-group col-md-6">
                <label for="inputPassword4">Last Name</label>
                <input type="text" class="form-control" name="lname" placeholder="Last Name" value=<?php echo $row['customer_lname'];?>>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputEmail4">Email</label>
                <input type="text" class="form-control" name="email" id="inputEmail4" placeholder="Email" value=<?php echo $row['customer_email'];?>>
              </div>
              <div class="form-group col-md-6">
                <label for="inputPassword4">Address</label>
                <input type="text" class="form-control" name="address" placeholder="Address" value=<?php echo $row['customer_address'];?>>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputPassword4">Phone</label>
                <input type="text" class="form-control" name="tel" placeholder="Phone number" value=<?php echo $row['customer_phone'];?>>
              </div>
            </div>
            <div class="center" >            
              <button type="reset" class="btn btn-secondary float-left space" value="reset">Reset</button>           
              <button type="submit" name ='update' class="btn btn-info float-left space">Update</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  </div> 
<?php 
    }
  }
  include 'footer.php';
?>

