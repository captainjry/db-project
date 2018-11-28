<?php
  session_start();
  include 'header.php';

require_once('connect.php');
  if(isset($_POST['title']))
    {
      $title = $mysqli->real_escape_string($_POST['title']);
      $author = $mysqli->real_escape_string($_POST['author_name']);
      $publisher = $mysqli->real_escape_string($_POST['publisher_name']);
      $year = $mysqli->real_escape_string($_POST['year']);
      $price = $mysqli->real_escape_string($_POST['price']);
      $q = "INSERT INTO book(author_name, publisher_name, title, year, price)
      VALUES ('". $author . "','". $publisher . "','". $title ."','". $year . "','". $price . "')";
      $result=$mysqli->query($q);
      if(!$result){
      echo "INSERT failed. Error: ".$mysqli->error ;
        }
      }
?>

<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    padding : 5px;
    margin-bottom : 10%;
}
</style>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/readmore.css">


<div class="container">
    <div class="box">
        <div class="book">
        <div class="col-sm-6">
          <div class="context">
            <h1>book edit</h1>

          <table style="width:100%" >

                <tr>
                    <th>ISBN</th> 
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>YEAR</th>
                    <th>Price</th>
                <?php 
                    $q = 'SELECT * FROM book';
                    $result=$mysqli->query($q);
                    if(!$result){
                      echo "Select failed. Error: ".$mysqli->error ;
                      
                    }
                   while($row=$result->fetch_array()){ ?>
                           <tr>
                              <td><?=$row['ISBN']?></td> 
                              <td><?=$row['title']?></td>
                              <td><?=$row['author_name']?></td>
                              <td><?=$row['publisher_name']?></td>
                              <td><?=$row['year']?></td>
                              <td><?=$row['price']?></td>
                              <td><a href='delbook.php?id=<?=$row['ISBN']?>'>X</a></td>
                          </tr>                               
                  <?php } ?>
                  </table>

          </div>
          <form action="staff_addbook.php" method="post">
                  <label>Title</label>
                  <input type="text" name="title"><br>
                  <label>Author</label>
                  <input type="text" name="author_name"><br>
                  <label>Publisher</label>
                  <input type="text" name="publisher_name"><br>
                  <label>YEAR</label>
                  <input type="text" name="year"><br>
                  <label>Price</label>
                  <input type="text" name="price" style="margin-bottom : 10%"><br>
                  <button type="submit" class="btn btn-dark cartbtn" style = "margin-bottom : 20%">Add new book</button>
                  </form>
                  <input type="hidden" name="ISBN" value="<?=$ISBN?>">
        </div>
      </div>
    </div>
  </div>
  <?php
    include 'footer.php';
  ?>