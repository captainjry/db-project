<?php
  session_start();
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
          include 'connect.php';
          $q = "select * from book";
          $result = $mysqli->query($q);
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
              if(isset($_SESSION['c_username'])){
              echo('
                <div class="col-sm">
                  <img src=" '.$book['img_url'].' " />
                  <div class="meta">
                    <ul class="actionlist">
                      <li>                    
                        <a href="book.php?id='.$book['ISBN'].'">Read more</a>
                        <a href="cartAction.php?action=addToCart&id='.$book['ISBN'].'">Buy</a>
                      </li>
                    </ul>
                  </div>
                </div>');
              }
                else{
                  echo('
                    <div class="col-sm">
                      <img src=" '.$book['img_url'].' " />
                      <div class="meta">
                        <ul class="actionlist">
                          <li>                    
                            <a href="book.php?id='.$book['ISBN'].'">Read more</a>                            
                          </li>
                        </ul>
                      </div>
                    </div>');
                  }
              if($index % 3 == 2) {
                echo("</div>");
              }
            }
          }
        ?>
      </div>
    </div>
    <br /><br />
    <div class="page">
      <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
        <?php
        $lastpage=ceil($booksLength / $bookPerPage);
        if ($page==1){
          echo('
              <li class="page-item disabled">
                <a class="page-link" href="?page='.(($page - 1) <= 0 ? 1 : ($page - 1)).'" tabindex="-1">Previous</a>
              </li>');
              for($i = 1; $i <= ceil($booksLength / $bookPerPage); $i++) {
                echo('
                  <li class="page-item">
                    <a class="page-link" href="?page='.$i .'">'.$i.'</a>
                  </li>');
              }
              echo('
                <li class="page-item">
                  <a class="page-link" href="?page='.(($page + 1) > $booksLength ? $booksLength - 1 : ($page + 1)).'">Next</a>
                </li>');
        }
        elseif($page==$lastpage){
          echo('
              <li class="page-item">
                <a class="page-link" href="?page='.(($page - 1) <= 0 ? 1 : ($page - 1)).'" tabindex="-1">Previous</a>
              </li>');
              for($i = 1; $i <= ceil($booksLength / $bookPerPage); $i++) {
                echo('
                  <li class="page-item">
                    <a class="page-link" href="?page='.$i .'">'.$i.'</a>
                  </li>');
              }
              echo('
                <li class="page-item disabled">
                  <a class="page-link" href="?page='.(($page + 1) > $booksLength ? $booksLength - 1 : ($page + 1)).'">Next</a>
                </li>');
        }
        else{
          echo('
          <li class="page-item">
            <a class="page-link" href="?page='.(($page - 1) <= 0 ? 1 : ($page - 1)).'" tabindex="-1">Previous</a>
          </li>');
          for($i = 1; $i <= ceil($booksLength / $bookPerPage); $i++) {
            echo('
              <li class="page-item">
                <a class="page-link" href="?page='.$i .'">'.$i.'</a>
              </li>');
          }
          echo('
            <li class="page-item ">
              <a class="page-link" href="?page='.(($page + 1) > $booksLength ? $booksLength - 1 : ($page + 1)).'">Next</a>
            </li>'); 
            }
          ?>
        </ul>
      </nav>
    </div>
  </div>
  <?php
    include 'footer.php';
  ?>