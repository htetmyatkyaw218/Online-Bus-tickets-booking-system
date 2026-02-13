
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
