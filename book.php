<?php 
    include 'header.php';
    // localhost/db-project/book.php?id=1
    require_once('connect.php');
    $q = "select * from book where ISBN = ".$_GET['id']."";
    $result = $mysqli->query($q);
    if(!$result) {
      echo "Select failed: ".$mysqli->error;
    }
    $book = $result->fetch_array();
    echo ('
      <div class="container">
        <div class="box">
            <div class="row">
              <div class="book">
                <div class="col-sm-6">
                  <img src='.$book["img_url"].' alt="books">
                </div>
            </div>
            <div class="col-sm-6">
              <div class="context">
                <b>
                  <h2>'.$book["title"].'</h2>
                </b><br>
                <h1>'.$book["author_name"].'</h1><br>
                <p>
                  '.$book["book_info"].'
                </p>
              </div>
              <h1>'.$book['price'].'.-</h1>
              <a href="cartAction.php?action=addToCart&id='.$book['ISBN'].'" role="button" class="btn btn-dark cartbtn">Add to cart</a>
            </div>
          </div>
        </div>
      </div>');
      include 'footer.php';
?>
