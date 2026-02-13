<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>WavePay QR Code</title>
  <link rel="stylesheet" type="text/css" href="pay.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* Define the CSS animation */
    @keyframes paymentSuccess {
      0% { transform: scale(0); opacity: 0; }
      100% { transform: scale(1); opacity: 1; }
    }
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      margin: 0;
      padding: 0;
    }
    .qr-code {
      text-align: center;
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      border-radius: 10px;
    }
    .qr-code h2 {
      font-size: 28px;
      color: #007bff;
      margin-top: 20px;
    }
    .qr-code img {
      max-width: 100%;
      margin-top: 20px;
      border: 2px solid #007bff;
      border-radius: 10px;
    }
    .qr-code p {
      font-size: 13px;
      margin-top: 20px;
    }
    .next-step {
      display: inline-block;
      padding: 10px 20px;
      background-color: #33AFFF;
      color: #fff;
      font-size: 18px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 20px;
      transition: background-color 0.3s ease-in-out;
    }
    .next-step:hover {
      background-color: #1E88E5;
    }
    a {
      color: #007bff;
      text-decoration: none;
      font-weight: bold;
    }
    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
<div class="payment-form">
  <div class="qr-code">
    <h2>Scan QR Code to Make Payment with <span style="color: #007bff;">WavePay</span></h2>
    <img src="img/wavepay.png" alt="WavePay Logo" width="100px">
    <img src="img/waveqr.jpg" alt="WavePay QR Code">
    <p>
      <a href="wavepay.jsp">
        <img src="img/waveid.png" alt="Wave ID Logo" style="color: crimson; width: 40px; ">
        Pay with WaveMoney
      </a> to make the purchase
    </p>
    
    
    
    
  </div>
  <script src="countdown.js"></script>
  <script type="text/javascript">
  // Get the countdown element
  const countdownElement = document.getElementById('countdown');
  //<a href="ticket.jsp"><button class="next-step" id="make-payment">Continue</button></a>
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
