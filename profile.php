<?php 
  include 'header.php';
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
          <img src="http://ishowmy.support/img/user-icon-360x360.jpg" alt="profileimg" class="img-thumbnail rounded-circle mx-auto d-block profileimg">
          <form>
            <div class="form-group text-center">
              <label for="exampleFormControlFile1">Upload a different photo..</label>
              <input type="file" class="form-control-file uploadf" id="exampleFormControlFile1">
            </div>
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <form>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputEmail4">First name</label>
                <input type="text" class="form-control" placeholder="First Name">
              </div>
              <div class="form-group col-md-6">
                <label for="inputPassword4">Lastname</label>
                <input type="text" class="form-control" placeholder="Password">
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputEmail4">Phone</label>
                <input type="text" class="form-control" placeholder="Phone">
              </div>
              <div class="form-group col-md-6">
                <label for="inputPassword4">Mobile</label>
                <input type="text" class="form-control" placeholder="Mobile">
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputEmail4">Email</label>
                <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
              </div>
              <div class="form-group col-md-6">
                <label for="inputPassword4">Address</label>
                <input type="text" class="form-control" placeholder="Address">
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputPassword4">Password</label>
                <input type="password" class="form-control" placeholder="Password">
              </div>
              <div class="form-group col-md-6">
                <label for="inputPassword4">Verify Password</label>
                <input type="password" class="form-control" placeholder="Verify Your Password">
              </div>
            </div>
            <div class="center">
              <button type="submit" class="btn btn-success float-right space">Submit</button>
              <button type="submit" class="btn btn-secondary float-right space">Reset</button>
              <button type="submit" class="btn btn-info float-left space">Edit</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  </div>
<?php 
  include 'footer.php';
?>