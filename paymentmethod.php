<?php
  include 'connect.php';
  include 'cart.php';
  $cart = new Cart;
  include 'header.php';

// redirect to home if cart is empty
if($cart->total_items() <= 0){
    header("Location: index.php");
}

// set customer ID in session
$_SESSION['sessCustomerID'] = $_SESSION['c_customerid'];

// get customer details by session customer ID
  $query = $mysqli->query("SELECT * FROM customer WHERE customer_id = ".$_SESSION['sessCustomerID']);
  $sql = "select * from customer where customer_id='".$_SESSION['c_customerid']."'";
  $result = mysqli_query($mysqli,$sql);
  $resultCheck = mysqli_num_rows($result);

  if($resultCheck >0){
    while ($row = mysqli_fetch_assoc($result)){
?>
  <link rel="stylesheet" href="css/pm.css">
  <div class="topic">
    <h2>Address Confirmation</h2>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-lg">
        <form action="updateAdress.php" method="post">
          <div class="form-row">
          </div>
          <div class="form-group">
            <label for="inputAddress">Address:</label>
            <textarea class="form-control"  id="exampleFormControlTextarea1" rows="5" placeholder=""><?php echo $row['customer_address']; ?></textarea><br> 
            <label for="inputAddress">You can change your Address here:</label>
            <input type="text" class="form-control" name="address" placeholder="Enter your address here...." value=<?php echo $row['customer_address'];?>>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">   
            </div>
          </div>
          <div class="form-group">
            <div class="form-check">
              </label>
            </div>
          </div>
          <div>
            <button type="reset" class="btn btn-secondary space" value="reset">Reset</button>           
            <button type="submit" name ='update' class="btn btn-info space updatebtn">Update</button>
          </div>
        </form>
      </div>
    </div><br>
    <div class="row">
    <h1>Order Preview</h1>
    <table class="table">
    <thead>
        <tr>
            <th>Product</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
    </thead>
    <tbody>
        <?php
        if($cart->total_items() > 0){
            //get cart items from session
            $cartItems = $cart->contents();
            foreach($cartItems as $item){
        ?>
        <tr>
            <td><?php echo $item["name"]; ?></td>
            <td><?php echo ''.$item["price"].' .-'; ?></td>
            <td><?php echo $item["qty"]; ?></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ''.$item["subtotal"].' .-'; ?></td>
        </tr>
        <?php } }else{ ?>
        <tr><td colspan="4"><p>No items in your cart......</p></td>
        <?php } ?>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="3"></td>
            <?php if($cart->total_items() > 0){ ?>
            <td class="text-center"><strong>Total <?php echo ''.$cart->total().' .-'; ?></strong></td>
            <?php } ?>
        </tr>
    </tfoot>
    </table>
    </div>
    <div class="row">
      <div class="col-lg">
        <div class="paymentCont">
          <div class="headingWrap">
            <h3 class="headingTop text-center">Select Your Payment Method</h3>
          </div>
          <div class="paymentWrap">
            <div class="btn-group paymentBtnGroup btn-group-justified" data-toggle="buttons">
              <label class="btn paymentMethod active">
                <div class="method cash"></div>
                <input type="radio" name="options" value="Cash" id="pcash">
              </label>
              <label class="btn paymentMethod">
                <div class="method master-card"></div>
                <input type="radio" name="options" value="Mastercard" id="mastercard">
              </label>
              <label class="btn paymentMethod">
                <div class="method visa"></div>
                <input type="radio" name="options" value="Visa" id="pvisa">
              </label>
              <label class="btn paymentMethod">
                <div class="method paypal"></div>
                <input type="radio" name="options" value="Paypal" id="ppaypal">
              </label>
              <label class="btn paymentMethod">
                <div class="method skrill"></div>
                <input type="radio" name="options" value="Skrill" id="pskrill">
              </label>                            
            </div>
          </div>
          <div class="footerNavWrap clearfix">
            <a role="button" href="index.php" class="btn btn-secondary left">Continue Shopping</a>
            <input id="SubmitButton" type="submit" value="Checkout" class="btn btn-info right" style="margin-left:30px;">
            <a role="button" href="cartAction.php?action=placeOrder" class="btn btn-success right orderBtn">Place Order</a>
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