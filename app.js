var pCash = document.getElementById("pcash"),
  masterCard = document.getElementById("mastercard"),
  pVisa = document.getElementById("pvisa"),
  pPaypal = document.getElementById("ppaypal"),
  pSkrill = document.getElementById("pskrill"),
  submitButton = document.getElementById("SubmitButton");

submitButton.addEventListener("click", function () {
  if (pCash.checked) {
    window.location = "index.html";
  } else if (masterCard.checked) {
    window.location = "payment.html";
  } else if (pVisa.checked) {
    window.location = "payment.html";
  }
  else if (pPaypal.checked) {
    window.location = "https://www.paypal.com/th/signin";
  }
  else if (pSkrill.checked) {
    window.location = "https://account.skrill.com/login?locale=en";
  }
}, false);