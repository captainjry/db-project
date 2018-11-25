<?php 
  include 'cart.php';
  $cart = new Cart;
  include 'header.php';
?>
  <script>
    function updateCartItem(obj,id){
        $.get("cartAction.php", {action:"updateCartItem", id:id, qty:obj.value}, function(data){
            if(data == 'ok'){
                location.reload();
            }else{
                alert('Cart update failed, please try again.');
            }
        });
    }
    </script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
    crossorigin="anonymous">
  <div class="topic">
    <h2>Shopping Cart
    </h2>
  </div>
  <div class="container mb-4">
    <div class="row">
      <div class="col-12">
        <div class="table-responsive">
          <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col"> </th>
                <th scope="col">Product</th>
                <th scope="col">Price</th>
                <th scope="col" class="text-center">Quantity</th>
                <th scope="col" class="text-right">Subtotal</th>
                <th>&nbsp;</th>
              </tr>
            </thead>
              <?php
            if($cart->total_items() > 0){
                //get cart items from session
                $cartItems = $cart->contents();
                foreach($cartItems as $item){
            ?>
            <tr>
                <td><?php echo '<img src='.$item["img"].' style="height: 50px;">';?></td>
                <td><?php echo $item["name"]; ?></td>
                <td><?php echo $item["price"].'.-'; ?></td>
                <td><input type="number" class="form-control text-center" value="<?php echo $item["qty"]; ?>" onchange="updateCartItem(this, '<?php echo $item["rowid"]; ?>')"></td>
                <td class="text-right"><?php echo $item["subtotal"].' .-'; ?></td>
                <td>
                    <a href="cartAction.php?action=removeCartItem&id=<?php echo $item["rowid"]; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')"><i class="fa fa-trash"></i></a>
                </td>
            </tr>
            <?php } }else{ ?>
            <tr><td colspan="5"><p>Your cart is empty.....</p></td>
            <?php } ?>
            </tbody>
            <tfoot>
        <tr>
            <td colspan="2"></td>
            <?php if($cart->total_items() > 0){ ?>
            <td class="text-center"><strong>Total <?php echo ''.$cart->total().' .-'; ?></strong></td>
            <?php } ?>
        </tr>
    </tfoot>
          </table>
        </div>
      </div>
      <div class="col mb-2">
        <div class="row">
          <div class="col-sm-12  col-md-6">
            <a href="index.php" class="btn btn-block btn-light" role="button">Continue Shopping</a>
          </div>
          <div class="col-sm-12 col-md-6 text-right">
            <a href="paymentmethod.php" class="btn btn-lg btn-block btn-success text-uppercase" role="button">Checkout</a>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php 
  include 'footer.php';
?>