<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bus Booking System</title>
	<link rel="stylesheet" type="text/css" href="homestyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style type="text/css">
		.cont{
			text-align: center;
			padding-top: 15px;

		}
		.cont h4{
			padding: 8px;
			font-weight: normal;
		}
		.cont_icon{
			width: 100%;
			height: auto;
			position: relative;
			display: flex;
			justify-content: center;

		}
		.cont_icon .cont_i{
			width: 20%;
			height: auto;
			border: 1px solid #e5e5e5;
			margin: 20px ;
			padding: 20px;
		}
		.cont_icon .cont_i button{
			text-decoration: none;
			margin-top: 10px;
			width: 120px;
			height: 30px;
			background-color: #33aFFF;
			border: 1px solid white;
			border-radius: 10px;
		}
		.cont_icon .cont_i button:hover{
			background-color: #1A58B4;
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
<div class="cont">
	<h2>Contact Us</h2>
	<p>How can we help You ?</p>
		<div class="cont_icon">
			<div class="cont_i">
			<i class="fa-solid fa-phone fa-xl" style="color: #33afff;"></i><br><br><br>
			<h4>Please call us</h4>
			<h4>+959751003020</h4>
			<h4>+959751003021</h4>
			</div>
		
			<div class="cont_i">
			<i class="fa-brands fa-facebook-messenger fa-xl" style="color: #33afff;"></i><br><br><br>
			<h4>Contact via Messenger</h4>
			<a href="https://www.messenger.com/"><button>Messenger</button></a>
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
			<li><a href="#"><i class="fa-brands fa-facebook-messenger"></i> Messanger</a></li>
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