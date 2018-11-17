<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
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
          <li class="nav-item">
            <a class="nav-link" href="signup.php">Sign up</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModalCenter">Log in</a>
          </li>
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
                  <form>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Username</label>
                      <input type="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        placeholder="Username">
                      <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone
                        else.</small>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Remember me</label>
                      <small id="emailHelp" class="form-text text-muted note">if you didn't sign up click here <a href="signup.php">Sign
                          up</a></small>
                    </div>
                  </form>
                </div>
                <div class="modal-footer justify-content-center">
                  <button type="button" class="btn btn-primary">Login</button>
                </div>
              </div>
            </div>
          </div>
          <li class="nav-item">
            <a class="nav-link " href="cart.php">Cart</a>
          </li>
        </ul>
      </div>
    </nav>
    <div class="second-bar">
      <div class="topnav">
        <a class="active" href="#home">Home</a> <a href="#about">About</a>
        <a href="#">Promotion</a>
        <a href="#contact">Author</a> <a href="#contact">Contact</a>
        <input type="text" placeholder="Search.." />
      </div>
    </div>
  </div>
  <div class="main-content">
    <div class="container">
      <div class="row">
        <div class="col-sm"><img src="img/1.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm"><img src="img/2.png">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm"><img src="img/3.png">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm"><img src="img/4.png">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm"><img src="img/5.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm"><img src="img/6.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm"><img src="img/7.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm"><img src="img/8.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm"><img src="img/9.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm"><img src="img/10.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm"><img src="img/11.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm"><img src="img/12.jpg">
          <div class="meta">
            <ul class="actionlist">
              <li>
                <a href="">Read more</a>
                <a href="">Buy</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div><br><br>
  <div class="page">
    <nav aria-label="Page navigation example">
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="page2.php" tabindex="-1">Previous</a>
        </li>
        <li class="page-item"><a class="page-link" href="index.php">1</a></li>
        <li class="page-item"><a class="page-link" href="page2.php">2</a></li>
        <li class="page-item disabled"><a class="page-link" href="#">3</a></li>
        <li class="page-item disabled">
          <a class="page-link disabled" href="#">Next</a>
        </li>
      </ul>
    </nav>
  </div>
  <footer class="my-footer">
    <div class="container">
      <div class="row">
        <div class="col-12 col-md">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
            stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mb-2">
            <circle cx="12" cy="12" r="10"></circle>
            <line x1="14.31" y1="8" x2="20.05" y2="17.94"></line>
            <line x1="9.69" y1="8" x2="21.17" y2="8"></line>
            <line x1="7.38" y1="12" x2="13.12" y2="2.06"></line>
            <line x1="9.69" y1="16" x2="3.95" y2="6.06"></line>
            <line x1="14.31" y1="16" x2="2.83" y2="16"></line>
            <line x1="16.62" y1="12" x2="10.88" y2="21.94"></line>
          </svg>
          <small class="d-block mb-3 text-white">© 2017-2018</small>
        </div>
        <div class="col-6 col-md">
          <h5>Features</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-white" href="#">Random feature</a></li>
            <li><a class="text-white" href="#">Cool stuff</a></li>
            <li><a class="text-white" href="#">Team feature</a></li>
            <li><a class="text-white" href="#">Stuff for developers</a></li>
            <li><a class="text-white" href="#">Another one</a></li>
            <li><a class="text-white" href="#">Last time</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5>About</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-white" href="#">Locations</a></li>
            <li><a class="text-white" href="#">Privacy</a></li>
            <li><a class="text-white" href="#">Terms</a></li>
            <li><a class="text-white" href="#">Team</a></li>
          </ul>
        </div>
      </div>
    </div>
  </footer>





  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script>
</body>

</html>