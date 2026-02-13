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
	<div class="seacrh">
		<h2>Search Trip</h2>
	</div>
	<div class="car-bar">
		<div class="input-bx">
		<form action="desti" method="post" >
            <input type="text"  name="from" list="options">
            <span><i class="fa-solid fa-bus"  ></i> From</span>
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
        </div>
        <div class="input-bx">
            <input type="text"  name="to" list="options" >
            <span><i class="fa-solid fa-location-dot"></i> To</span>
        </div>
        <div class="input-bx">
             <input type="text" id="date-picker" class="form-control"placeholder=" Date" name="date" >
            <span><i class="fa-solid fa-calendar-days"></i> </span>
             <script type="text/javascript" src="https://translate.google.com/translate_a/element.js"></script>
				<script>
  				flatpickr("#date-picker", {
   				 minDate: "today",
    				dateFormat: "Y-m-d",
 						 });
					</script>
        </div>
        <div class="input-b">
           <a href="des.jsp"><input type="submit" value="Search" ></a>
        </div>
        </form>
	</div>
	</div>
	
	
	<%try{
	Class.forName("com.mysql.jdbc.Driver");
			}
			catch(ClassNotFoundException e){
				e.printStackTrace();
			}
			String selectquery="";
			
			/** selectquery="select * from route where Date='2023-09-15'"; */
			selectquery="select * from route";
			Connection conn; 
			try{
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
				Statement st=conn.createStatement();
				ResultSet rs=st.executeQuery(selectquery);
				while(rs.next()) {
					%>
	<div class="tab">
	<div class="tab_1">
	
			<p class="t"><%=rs.getString(4) %>,<%=rs.getString(10) %></p>
			<h4><%=rs.getString(2) %>-<%=rs.getString(3) %> </h4>
			<p>Depart:<%=rs.getString(5) %></p>
			<p>Arrive:<%=rs.getString(6) %></p>
			<p>Duration:<%=rs.getString(8) %></p>
			<p class="n">* NRC</p>
			</div>
		<div class="tab_2">
		   <img src="<%=rs.getString(9)%>" >
			<h4>Crown</h4>
		</div>
		<div class="tab_3">
			<p class="mm">MMK&nbsp;<%=rs.getString(7) %></p>
			<p>x 1 Seats</p>
			
			</div>
	
	</div>
			
</div>
<%  
}
		//select Seat htal chin yin destination java ka nay yuu htal 				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			%>

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