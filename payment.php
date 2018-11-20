<?php
  include 'header.php';
?>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
  <div class="topic">
    <h2>Payment
    </h2>
  </div>
  <div class="container">
    <br>
    <div class="row">
      <aside class="col-sm-6 center">
        <article class="card">
          <div class="card-body p-5">
            <p>
              <div class="container">
                <div class="row justify-content-center creditlogo">
                  <div class="col-4">
                    <img src="http://bootstrap-ecommerce.com/main/images/icons/pay-visa.png">
                  </div>
                  <div class="col-4">
                    <img src="http://bootstrap-ecommerce.com/main/images/icons/pay-mastercard.png">
                  </div>
                </div>
              </div>
              <form role="form">
                <div class="form-group">
                  <label for="username">Full name (on the card)</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" name="username" placeholder="" required="">
                  </div> <!-- input-group.// -->
                </div> <!-- form-group.// -->

                <div class="form-group">
                  <label for="cardNumber">Card number</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa fa-credit-card"></i></span>
                    </div>
                    <input type="text" class="form-control" name="cardNumber" placeholder="">
                  </div> <!-- input-group.// -->
                </div> <!-- form-group.// -->

                <div class="row">
                  <div class="col-sm-8">
                    <div class="form-group">
                      <label><span class="hidden-xs">Expiration</span> </label>
                      <div class="form-inline">
                        <select class="form-control" style="width:45%">
                          <option>MM</option>
                          <option>01 - January</option>
                          <option>02 - February</option>
                          <option>03 - March</option>
                          <option>04 - April</option>
                          <option>05 - May</option>
                          <option>06 - June</option>
                          <option>07 - July</option>
                          <option>08 - August</option>
                          <option>09 - September</option>
                          <option>10 - October</option>
                          <option>11 - November</option>
                          <option>12 - December</option>
                        </select>
                        <span style="width:10%; text-align: center"> / </span>
                        <select class="form-control" style="width:45%">
                          <option>YY</option>
                          <option>2018</option>
                          <option>2019</option>
                          <option>2020</option>
                          <option>2021</option>
                          <option>2022</option>
                          <option>2023</option>
                          <option>2024</option>
                          <option>2025</option>
                          <option>2026</option>
                          <option>2027</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV
                        <i class="fa fa-question-circle"></i></label>
                      <input class="form-control" required="" type="text">
                    </div> <!-- form-group.// -->
                  </div>
                </div> <!-- row.// -->
                <button class="subscribe btn btn-primary btn-block" type="button"> Confirm </button>
              </form>
          </div> <!-- card-body.// -->
        </article> <!-- card.// -->
      </aside> <!-- col.// -->



    </div> <!-- tab-pane.// -->
  </div> <!-- tab-content .// -->

  </div> <!-- card-body.// -->
  </article> <!-- card.// -->


  </aside> <!-- col.// -->
  </div> <!-- row.// -->

  </div>
  <!--container end.//-->

  <br><br>

<?php
  include 'footer.php';
?>