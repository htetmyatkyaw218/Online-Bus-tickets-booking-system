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
	<script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
</head>
<body>
	<div class="back">
		<video autoplay muted loop class="b">
			<source src="img/v1.mp4" type="video/mp4">
		</video>
<header>
	<div class="bar">

		<div class="logo">
			<h1 class="name" ><img src="img/p2.jpg">Crown BusTicket</h1><br><br><br><br>

			<h1 class="p">Book Online Bus Ticket<br> Around Myanmar</h1><br>
			<p>The leading bus ticketing system in Myanmar.<br> Find the best price for your bus tickets.</p><br>
			<a href="#">&#10003; Safe</a>
			<a href="#">&#10003; Secure</a>
			<a href="#">&#10003; Fast Payment</a>
		</div>
		<div class="cx">
		<div class="icon">
			<ul>
				<li><a href="admin.jsp"> Admin</a></li>
				<li><a href="about.jsp"> Abuot Us</a></li>
				<li><a href="contant.jsp"> Contact</a> </li>
				<li><a href="destination.jsp"> Destination</a></li>
				<li><a href="home.jsp">Home</a></li>
			</ul>
		</div>
	</div>
	</div>

</header>
</div>
<section>
	<div class="car-bar">
		<div class="input-bx">
		<form action="desti" method="post">
            <input type="text" required="required" name="from" list="options">
             <datalist id="options">
					<option value="Yangon-Dagonayar(Yangon)">
					<option value="Pathein">
    				<option value="Mandalay">
    				<option value="MyaungMya">
  					<option value="ChaungThar">
  					<option value="Laputta">
  					<option value="HinThada">
  					<option value="KyonePyaw">
    				<option value="NayPyiTaw">
</datalist>
            <span><i class="fa-solid fa-bus"></i> From</span>
        </div>
        <div class="input-bx">
            <input type="text" required="required" name="to" list="options">
            <span><i class="fa-solid fa-location-dot"></i> To</span>
        </div>
        <div class="input-bx">
           <input type="text" id="date-picker" class="form-control"placeholder=" DATE " name="date">
            <span  ><i class="fa-solid fa-calendar-days"></i> </span>
  <script type="text/javascript" src="https://translate.google.com/translate_a/element.js"></script>
<script>
  flatpickr("#date-picker", {
    minDate: "today",
    dateFormat: "Y-m-d",
  });
</script>
</div>
        <div class="input-b">
           <input type="submit" value="Search" ></a>
        </div>
       </form>
	</div>
	<div class="mid">
<section class="swiper mySwiper">

    <div class="swiper-wrapper">

      <div class="card swiper-slide">
        <div class="card__image">
          <img src="img/10.jpg" alt="card image">
        </div>

        <div class="card__content">
          <span class="card__title"> Pathein <i class="fa-solid fa-right-left fa-2xs"></i> Yangon</span>
          <span class="card__name">AM</span>
          <p class="card__text"><i class="fa-regular fa-clock"></i> 6:30, 10:30</p>
          <span class="card__name">PM</span>
          <p class="card__text"><i class="fa-regular fa-clock"></i> 2:30 ,5:30</p>
          <button class="card__btn"><a href="destination.jsp"> View More</a></button>
        </div>
      </div>

      <div class="card swiper-slide">
        <div class="card__image">
          <img src="img/12.jpg" alt="card image">
        </div>

        <div class="card__content">
          <span class="card__title"> Pathein <i class="fa-solid fa-right-left fa-2xs"></i> ChaungThar</span>
          <span class="card__name">AM</span>
          <p class="card__text"><i class="fa-regular fa-clock"></i> 5:30 , 7:30 </p>
          
          <button class="card__btn"><a href="destination.jsp">View More</a></button>
        </div>
      </div>

      <div class="card swiper-slide">
        <div class="card__image">
          <img src="img/13.jpg" alt="card image">
        </div>

        <div class="card__content">
          <span class="card__title"> Pathein <i class="fa-solid fa-right-left fa-2xs"></i> Hinthada</span>
          <span class="card__name">AM</span>
          <p class="card__text"><i class="fa-regular fa-clock"></i> 7:00</p>
         
          <button class="card__btn"><a href="destination.jsp"> View More</a></button>
        </div>
      </div>

      <div class="card swiper-slide">
        <div class="card__image">
          <img src="img/11.jpg" alt="card image">
        </div>

        <div class="card__content">
          <span class="card__title"> Pathein <i class="fa-solid fa-right-left fa-2xs"></i> Mandalay</span>
          <span class="card__name">AM</span>
          <p class="card__text"><i class="fa-regular fa-clock"></i> 8:00</p>
          
          <button class="card__btn"><a href="destination.jsp"> View More</a></button>
        </div>
      </div>
      	<div class="card swiper-slide">
        <div class="card__image">
          <img src="img/14.jpg" alt="card image">
        </div>

         <div class="card__content">
          <span class="card__title"> Pathein <i class="fa-solid fa-right-left fa-2xs"></i> Laputta</span>
          <span class="card__name">AM</span>
          <p class="card__text"><i class="fa-regular fa-clock"></i>  8:30</p>
          <span class="card__name">PM</span>
          <p class="card__text"><i class="fa-regular fa-clock"></i> 2:30</p>
          <button class="card__btn"><a href="destination.jsp"> View More</a></button>
        </div>
      </div>
      
    </div>
  </section>

<!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      effect: "coverflow",
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: "auto",
      coverflowEffect: {
        rotate: 0,
        stretch: 0,
        depth: 300,
        modifier: 1,
        slideShadows: false,
      },
      pagination: {
        el: ".swiper-pagination",
      },
    });
  </script>
</div>
</section>
<div class="pay">
	<div class="pay_title">
		<h2>SECUER &nbsp; PAYMENT</h2>
	</div>
	<div class="img">
	 <img src="img/yoma.jpg">
	 <img src="img/kbz.png">
	 <img src="img/aya.jpg">
	 <img src="img/cb.jpg">
	 <img src="img/wave.jpg">
	 <img src="img/kpay.png">
	</div>
	<div class="img">
	 <img src="img/cb.jpg">
	 <img src="img/kpay.png">
	 <img src="img/yoma.jpg">
	 <img src="img/wave.jpg">
	 <img src="img/aya.jpg">
	 <img src="img/kbz.png">
	</div>
	</div>	
</div>
<div class="place">
	<div class="place_title">
		<h2>POPULAR &nbsp;ROUTES</h2>
	</div>
	<div class="parent">
		<img src="img/15.jpg" class="child">
		<p>Yangon</p>
	</div>
	<div class="parent">
		<img src="img/19.jpg" class="child">
	</div>
	<div class="parent">
		<img src="img/20.jpg" class="child">
	</div>
</div>
	<div class="text" >
		<div class="text_in">
			<p>Yangon</p>
		</div>
	</div>
	<div class="text" >
		<div class="text_in">
			<p>Mandalay</p>
		</div>
	</div>
	<div class="text" >
		<div class="text_in">
			<p>Chaung Thar</p>
		</div>
	</div>
<footer>
	<div  class="but">
		<p>INFORMATION</p>
		<ul>
			<li><a href="">How to Book Bus Ticket</a></li>
			<li><a href="">How to Open Ecommerce</a></li>
			<li><a href="" >Customer Feedback</a></li>
			<li>
			<form action="https://formspree.io/f/xdordkqp" method="post">
			<input type="email" name="email"placeholder=" enter your email " style="width: 80%; height: 40px;border-radius: 10px; border: 1px solid #e5e5e5;padding-left:10px; " required>

    				<input type="text" name="com" placeholder="Write your comments here" style="width: 80%;height: 100px;border-radius: 10px;border: 1px solid #e5e5e5;padding-left: 10px; margin-top: 5px;padding-bottom: 30px;">
   					 <input type="submit"  value="SUBMIT " style="width: 40%;height:40px;background-color: #1AA7EC;border-radius: 10px;border: 1px solid white;color: white;font-size: 16px;margin-bottom: 10px;margin: 5px; " class="submit">
			</form>
			</li>
			
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