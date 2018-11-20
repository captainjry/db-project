<?php 
  include 'header.php';
?>
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
                <th scope="col">Available</th>
                <th scope="col" class="text-center">Quantity</th>
                <th scope="col" class="text-right">Price</th>
                <th> </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><img src="img/1.jpg" style="height: 50px;" /> </td>
                <td>Culture Japan</td>
                <td>In stock</td>
                <td><input class="form-control" type="text" value="1" /></td>
                <td class="text-right">258 Baht</td>
                <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
              </tr>
              <tr>
                <td><img src="img/2.png" style="height: 50px;" /> </td>
                <td>NY-1st-Time</td>
                <td>In stock</td>
                <td><input class="form-control" type="text" value="1" /></td>
                <td class="text-right">243 Baht</td>
                <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
              </tr>
              <tr>
                <td><img src="img/3.png" style="height: 50px;" /> </td>
                <td>The Real Alaska</td>
                <td>In stock</td>
                <td><input class="form-control" type="text" value="1" /></td>
                <td class="text-right">243 Baht</td>
                <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Sub-Total</td>
                <td class="text-right">771 Baht</td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Shipping</td>
                <td class="text-right">50 Baht</td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><strong>Total</strong></td>
                <td class="text-right"><strong>821 Baht</strong></td>
              </tr>
            </tbody>
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