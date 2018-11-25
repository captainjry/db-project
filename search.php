<?php
  include 'header.php';
?>
  <div class="bg">
    <div class="topic">
      <img src="img/logo.png" alt="logo" class="logoBig">
      <h2>Bookstore</h2>
    </div>
    <div class="main-content">
      <div class="container">
      <?php
      if(isset($_POST['searchb']))
      {
        include 'connect.php';
          $search = mysqli_real_escape_string($mysqli,$_POST['search']);
          $searchup=strtoupper($search);
          $q = "select * from book where title LIKE '%$searchup%'or author_name LIKE '%$searchup%'";
          $result = $mysqli->query($q);
          $results=array();
          $numresult=count($results);
          if(!$result) {
            echo "Select failed: ".$mysqli->error;
          }       
          $books = array();
          while($book = $result->fetch_assoc()) {
            $books[] = $book;
          }
          $page = $_SERVER['QUERY_STRING'] ? $_GET['page'] : 1;
          $bookPerPage = 12;
          $booksLength = count($books);
          for($index = ($page - 1) * $bookPerPage; $index <= ($bookPerPage * $page) - 1; $index++) {
            if($index < $booksLength) {
              $book = $books[$index];
              if($index % 3 == 0) {
                echo("<div class='row'>");
              }
              echo('
                <div class="col-sm">
                  <img src="'.$book['img_url'].'"/>
                  <div class="meta">
                    <ul class="actionlist">
                      <li>                    
                        <a href="book.php?id='.$book['ISBN'].'">Read more</a>
                        <a href="cartAction.php?action=addToCart&id='.$book['ISBN'].'">Buy</a>
                      </li>
                    </ul>
                  </div>
                </div>');
              if($index % 3 == 2) {
                echo("</div>");
              }
            }
          }
        }
        ?>
      </div>
    </div>
    <br /><br />
  
  <?php
    include 'footer.php';
  ?>