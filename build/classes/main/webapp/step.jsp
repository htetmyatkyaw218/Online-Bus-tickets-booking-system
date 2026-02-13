<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bus Booking System</title>

	   <link rel="stylesheet" type="text/css" href="seat.css">
	   <link rel="stylesheet" type="text/css" href="seatex.css">
	<link rel="stylesheet" type="text/css" href="step1.css">
	<link rel="stylesheet" type="text/css" href="pay.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<header>
	<div class="bar">
		<div class="logo">
			<h1 class="name" ><img src="img/p2.jpg" width="50px" height="50px" style="border-radius: 50%; ">Crown BusTicket</h1>
		</div>
		<div class="cx">
		<div class="icon">
			<ul>
				<li><a href="about.jsp"> Abuot Us</a></li>
				<li><a href="contant.jsp"> Contact</a> </li>
				<li><a href="destination.jsp"> Destination</a></li>
				<li><a href="home.jsp">Home</a></li>
			</ul>
		</div>
	</div>
	</div>
</header>
<div class="container">
    <ol class="steps mt-5 mb-4">
    <li class="text-my step is-active" data-step="1">Seat Selection</li>
    <li class="text-my step" data-step="2">Traveller Info</li>
    <li class="text-my step" data-step="3">Payment</li>
    <li class="text-my step" data-step="4">Comfirmation</li>
</ol>    
</div>
<div class="step-content">
     <div class="step-pane active" data-step="1">
        <!-- Your content for Step 1 goes here -->
  			 <jsp:include page="seat.jsp"/>
      

    </div>
    
    <div class="step-pane" data-step="2">
        <!-- Your content for Step 2 goes here -->
         <jsp:include page="tarvellerinfo.jsp"/>
          
    </div>
    
    <div class="step-pane" data-step="3">
        <!-- Your content for Step 3 goes here -->
         <jsp:include page="payment.jsp"/>
    </div>
    
    <div class="step-pane" data-step="4">
        <h2>Step 4: Confirmation</h2>
        <!-- Your content for Step 4 goes here -->
         <jsp:include page="payment.jsp"/>
        <button class="prev-step">Back</button>
        <button class="next-step">Finish</button>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(document).ready(function(){
    $('#agree-terms-checkbox').change(function(){

        if($("#agree-terms-checkbox").is(':checked')) {
            $('#traveller-info-submit-button').prop('disabled', false);
        } else {
            $('#traveller-info-submit-button').prop('disabled', true);
        }
    });
    });
   const steps = document.querySelectorAll('.step');
const stepContent = document.querySelectorAll('.step-pane');
const nextButtons = document.querySelectorAll('.next-step');

for (let i = 0; i < steps.length; i++) {
    steps[i].addEventListener('click', () => {
        for (let j = 0; j < steps.length; j++) {
            steps[j].classList.remove('is-active');
            stepContent[j].classList.remove('active');
        }
        steps[i].classList.add('is-active');
        stepContent[i].classList.add('active');
    });

 // Existing code
 // ...

 nextButtons[i].addEventListener('click', () => {
     steps[i].classList.remove('is-active');
     steps[i].classList.add('is-complete');
     stepContent[i].classList.remove('active');
     
     if (i + 1 < steps.length) {
         steps[i + 1].classList.add('is-active');
         stepContent[i + 1].classList.add('active');
     }
     
     // New code: Hide the previous step's content
     if (i > 0) {
         stepContent[i - 1].classList.remove('active');
     }
 });

 // ...


    const prevButtons = stepContent[i].querySelectorAll('.prev-step');
    prevButtons.forEach((prevButton) => {
        prevButton.addEventListener('click', () => {
            steps[i].classList.remove('is-active');
            stepContent[i].classList.remove('active');
            if (i > 0) {
                steps[i - 1].classList.add('is-active');
                stepContent[i - 1].classList.add('active');
                steps[i - 1].classList.remove('is-complete'); // Remove completion when stepping back
            }
        });
    });
}
</script>
<footer>
	<div  class="but">
		<p>INFORMATION</p>
		<ul>
			<li><a href="">How to Book Bus Ticket</a></li>
			<li><a href="">How to Open Ecommerce</a></li>
			
		</ul>
	</div>
	<div class="but">
		<p>CONTACT</p>
		<ul>
			<li><a href="#"><i class="fa-solid fa-location-dot"></i> Pathein Highway BusStation,<br>Kimmain Kyun,Pathein ,Myanmar</a></li>
			<li><a href="tel:+95651553152"><i class="fa-solid fa-phone"></i> +959751003020</a></li>
			<li><a href="https://www.messenger.com/"><i class="fa-brands fa-facebook-messenger"></i> Messanger</a></li>
		</ul>
	</div>
	<div class="but">
		<p>LEGAL</p>
		<ul>
			<li><a href="term.jsp">Terms & Conditions</a></li>
			<li><a href="privacy.jsp">Privacy Policy</a></li>
		</ul>
	</div>
</footer>
</body>
</html>