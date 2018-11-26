<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous" />
  <link rel="stylesheet" href="css/style.css?<?=filemtime('css/style.css');?>">
  <link rel="stylesheet" href="css/readmore.css">
  <title>Bookstore</title>
</head>
<body>
  <div class="header">
    <nav class="navbar navbar-expand-lg" id="nav1">
      <a class="navbar-brand" href="index.php"><img src="img/logo.png" alt="logo" id="logo"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample08" aria-controls="navbarsExample08"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-end" id="navbarsExample08">
        <ul class="navbar-nav">
        <?php
          if (isset($_SESSION['c_username'])){
          echo '
                  <li class="nav-item">
                    <a href="logout.php" class="nav-link">Log out</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="profile.php">Profile</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link " href="viewCart.php">Cart</a>
                  </li>
                </form>';
          }else{
            echo '<li class="nav-item">
                    <a class="nav-link" href="signup.php">Sign up</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModalCenter">Log in</a>
                  </li>';
          }
          ?>
          <!-- Modal -->
          <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <img src="img/logo.png" alt="logo" id="logologin">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form  action="login.php" method="POST">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Username</label>
                      <input type="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        name="username" placeholder="Username">
                      <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone
                        else.</small>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword1"name="password" placeholder="Password">
                    </div>
                    <div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Remember me</label>
                      <small id="emailHelp" class="form-text text-muted note">if you didn't sign up click here <a href="signup.php">Sign
                          up</a></small>
                    </div>
                    <div class="modal-footer justify-content-center">
                      <button type="submit" name="submit" class="btn btn-primary">Login</button>
                    </div>
                    </form>
                </div>
                <div class="modal-footer justify-content-center">
                </div>
              </div>
            </div>
          </div>
        </ul>
      </div>
    </nav>
    <div class="second-bar">
      <div class="topnav">
        <a class="active" href="#home">Home</a> <a href="#about">About</a>
        <a href="#">Promotion</a>
        <a href="#contact">Author</a> <a href="#contact">Contact</a>
        <form action="search.php" method="POST">
          <button type="submit" name="searchb"><i class="fas fa-search"></i></button>
          <input type="text" name="search" placeholder="Search.." />
        </form>
      </div>
    </div>
  </div>