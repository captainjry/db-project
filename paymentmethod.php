<?php 
  include 'header.php';
?>
  <link rel="stylesheet" href="css/pm.css">
  <div class="topic">
    <h2>Address Confirmation
    </h2>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-lg">
        <form>
          <div class="form-row">
          </div>
          <div class="form-group">
            <label for="inputAddress">Address</label>
            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
          </div>
          <div class="form-group">
            <label for="inputAddress2">Address 2</label>
            <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputCity">City</label>
              <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="form-group col-md-4">
              <label for="inputState">State</label>
              <select id="inputState" class="form-control">
                <option selected>Choose...</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-2">
              <label for="inputZip">Zip</label>
              <input type="text" class="form-control" id="inputZip">
            </div>
          </div>
          <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="gridCheck">
              <label class="form-check-label" for="gridCheck">
                Check me out
              </label>
            </div>
          </div>
        </form>
      </div>
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
                <input type="radio" name="options" value="cash" id="pcash">
              </label>
              <label class="btn paymentMethod">
                <div class="method master-card"></div>
                <input type="radio" name="options" value="mc" id="mastercard">
              </label>
              <label class="btn paymentMethod">
                <div class="method visa"></div>
                <input type="radio" name="options" value="visa" id="pvisa">
              </label>
              <label class="btn paymentMethod">
                <div class="method paypal"></div>
                <input type="radio" name="options" value="pp" id="ppaypal">
              </label>
              <label class="btn paymentMethod">
                <div class="method skrill"></div>
                <input type="radio" name="options" value="sk" id="pskrill">
              </label>
            </div>
          </div>
          <div class="footerNavWrap clearfix">
            <a role="button" href="index.php" class="btn btn-secondary left">Continue Shopping</a>
            <input id="SubmitButton" type="submit" value="Checkout" class="btn btn-success right">
          </div>
        </div>
      </div>
    </div>
  </div>
<?php 
  include 'footer.php';
?>