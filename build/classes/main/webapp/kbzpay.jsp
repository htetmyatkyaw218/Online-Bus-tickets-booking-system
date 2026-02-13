<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>KBZPay QR Code</title>
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
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      border-radius: 5px;
    }
    .qr-code h4 {
      color: #666;
      font-size: 18px;
    }
    .qr-code h2 {
      font-size: 24px;
      color: #333;
      margin-top: 10px;
    }
    .qr-code img {
      max-width: 100%;
      margin-top: 20px;
    }
    .qr-code p {
      font-size: 16px;
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
   
  </style>
</head>
<body>
  <div class="qr-code">
    <h4 id="countdown"></h4>
    <h2>Scan QR Code to Make Payment with KBZPay</h2>
    <img src="img/kbzqr.jpg" alt="KBZPay QR Code">
    <p>Login with <a href="https://www.kbzpay.com/en/">KBZ ID</a> to make the purchase</p>
   <a href="payment.jsp"><button class="next-step" >Back</button></a>
    <a href="ticket.jsp" > <button class="next-step" id="make-payment" >Make Payment</button></a>
    <script src="countdown.js"></script>
    <script type="text/javascript">
  // Get the countdown element
  const countdownElement = document.getElementById('countdown');

  // Get the "Make Payment" button
  const makePaymentButton = document.getElementById('make-payment');

  // Set the target time (9 minutes from now)
  const targetTime = new Date().getTime() + 1 * 10 * 1000;

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


</body>
</html>
