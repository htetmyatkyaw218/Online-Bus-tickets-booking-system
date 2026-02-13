<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>WavePay Payment Form</title>
  <link rel="stylesheet" type="text/css" href="wavepay.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* Add custom CSS styles for a more beautiful form */
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }
    .payment-form {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      max-width: 600px;
      margin: 0 auto;
      text-align: center;
      height: 600px;
    }
    h3 {
      color: #333;
    }
    label {
      display: block;
      margin-top: 10px;
      color: #555;
    }
    input{
      width: 95%;
      padding: 10px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      background-color: #007bff;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      margin-top: 15px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    button:hover {
      background-color: #0056b3;
    }
    .a{
      width: 100px;
      color: white;
      background-color: #0056b3;
    height: 30px;
    }
    p {
      font-size: 14px;
      margin-top: 20px;
      color: #888;
    }
    a {
      color: #007bff;
      text-decoration: none;
      font-weight: bold;
    }
    a:hover {
      text-decoration: underline;
    }
    .logo {
      max-width: 100px;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <div class="payment-form">
    <h4 id="countdown"></h4>
    <h3>Make a Payment with <span style="color: #007bff;">WavePay</span></h3>
    <form >
      <div class="logo-container">
        <img src="img/wwpay.png" alt="WavePay Logo" class="logo">
      </div>
      <label for="phone">Phone Number:</label>
      <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" >
      <label for="amount">Amount:</label>
      <input type="number" id="amount" name="amount" placeholder="Enter the payment amount" min="0" >
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" >
       <button type="submit"><a href="payment.jsp" style="color: white; ">Back</a></button>
      <button type="submit" id="make-payment" ><a href="ticket.jsp" style="color: white; ">Make Payment</a></button><a href="wavepayqr.jsp"><h4  >Scan QR Code to Make Payment with WavePay</h4></a>
      <p>Login with <a href="https://wavemoney.com.mm/wavepay"> <img src="img/waveid.png" alt="Wave ID Logo" style="color: crimson; width: 40px;">Wave ID</a> to make the purchase</p>
    </form>
 
   <script src="countdown.js"></script>
<script type="text/javascript">
  // Get the countdown element
  const countdownElement = document.getElementById('countdown');

  // Get the "Make Payment" button
  const makePaymentButton = document.getElementById('make-payment');

  // Set the target time (9 minutes from now)
  const targetTime = new Date().getTime() +  1* 10 * 1000;

  // Update the countdown every second
  const interval = setInterval(updateCountdown, 1000);

  function updateCountdown() {
    const currentTime = new Date().getTime();
    const timeDifference = targetTime - currentTime;

    if (timeDifference <= 0) {
      clearInterval(interval);
      countdownElement.innerHTML = 'Time has expired.';

      // Disable the "Make Payment" button
      makePaymentButton.disabled = true;

      // Remove the hover effect by removing the button's hover style
      makePaymentButton.style.pointerEvents = 'none';

      // Optionally, you can change the button's appearance to indicate it's disabled
      makePaymentButton.style.backgroundColor = '#ccc'; // Change the button color to gray
    } else {
      const minutes = Math.floor(timeDifference / (1000 * 60));
      const seconds = Math.floor((timeDifference % (1000 * 60)) / 1000);
      countdownElement.innerHTML = `<i class="fas fa-clock"></i> Time remaining: ${minutes}m ${seconds}s`;
    }
  }
</script>



  </div>
  
</body>
</html>