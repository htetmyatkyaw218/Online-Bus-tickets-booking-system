<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="admin.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bus Booking System</title>
	<link rel="stylesheet" type="text/css" href="des.css">
	<script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style type="text/css">
	.input-bx input{
	padding-left: 30px;
	}
	
	</style>
</head>
<body>
<header>
	<div class="bar">

		<div class="logo">
			<h1 class="name" ><img src="img/p2.jpg">Crown BusTicket</h1>
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
<div class="mid_bar">
<div class="bord">
	
	<div class="container">
	<div class="screen">
		<div class="screen__content">
			<form class="login" action="login" method="post">
				<h2 style="padding-bottom: 30px; ">Only For Admin</h2>
				<h1 style=" color: red; font-style: italic;">Try again !</h1>
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<input type="text" class="login__input" placeholder="Admin name " name="name"required>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<input type="password" class="login__input" placeholder="Password" name="pass"required>
				</div>
				<button class="button login__submit">
				<span class="button__text">Log In Now</span>
					<i class="button__icon fas fa-chevron-right"></i>
				</button>				
			</form>
			
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
</div>
	</div>

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