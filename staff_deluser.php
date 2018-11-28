<?php
  session_start();
  include 'header.php';
  include 'connect.php';
?>

<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    padding : 2px;
    margin-bottom : 10%;
}
</style>



  <div class="container">
    <div class="box">
      <div class="row">
        <div class="book">
          <div class="col-sm-6">
          </div>
        </div>
        <div class="col-sm-6">
          <div class="context">
            <h1>User information</h1>

          <table style="width:100%" >

                <tr>
                    <th>Firstname</th> 
                    <th>Lastname</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <?php 
				 	$q="select * from customer";
					$result=$mysqli->query($q);
					if(!$result){
						echo "Select failed. Error: ".$mysqli->error ;
						
					}
				 while($row=$result->fetch_array()){ ?>
                 <tr>
                    <td><?=$row['customer_fname']?></td> 
                    <td><?=$row['customer_lname']?></td> 
                    <td><?=$row['customer_username']?></td>
                    <td><?=$row['customer_password']?></td>
                    <td><?=$row['customer_address']?></td>
                    <td><?=$row['customer_phone']?></td>
                    <td><?=$row['customer_email']?></td>
                    <td><a href='deluser.php?id=<?=$row['customer_id']?>'>X</a></td>
                </tr>                               
				<?php } ?>
                  </table>

          </div>
            <input type="hidden" name="customerid" value="<?=$customer_id?>">

        </div>
      </div>
    </div>
  </div>
  <?php
    include 'footer.php';
  ?>