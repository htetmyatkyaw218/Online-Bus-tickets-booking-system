<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.http.*" %>
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
   <link rel="stylesheet" href="pay.css" />
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
.image img{
	 width: 100%;
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
<body>
	  <div class="image"><img src="img/24.png"></div>
<section class="Travell">
    
        <section class="Travell_1">
            <table >
        	<thead>
        	<tr>
        		<th>Routes Information</th>
        		<th></th>
        	</tr>
        	</thead>
        	<tbody>
        	 <%try{
        	Class.forName("com.mysql.jdbc.Driver");
        			}
        			catch(ClassNotFoundException e){
        				e.printStackTrace();
        			}
        			String selectquery="";
        			HttpSession session1=request.getSession();
        			String from=(String)session.getAttribute("source");
        			String to=(String)session.getAttribute("destination");
        			String Date=(String)session.getAttribute("Date");
        			String seat=request.getParameter("seatno");
        			//String from=request.getParameter("source");
        			//String to=request.getParameter("destination");
        			//String Date=request.getParameter("Date");
        			
        			 selectquery="select * from route, information where route.source like'%"+from+"%'=information.source like'%"+from+"%' and route.destination like '%"+to+"%'=information.destination like '%"+to+"%' and route.Date like'%"+Date+"%'=information.Date like'%"+Date+"%' and information.seat='"+seat+"'";
        			
        			Connection conn; 
        			try{
        				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
        				Statement st=conn.createStatement();
        				ResultSet rs=st.executeQuery(selectquery);
        				if(rs.next()) {
        					
        					%>
        	 <tr >
                <td>Route</td>
                <td><%=rs.getString(2) %>- <%=rs.getString(3) %></td>
            </tr>
            <tr >
                <td>Departure Time</td>
                <td><%=rs.getString(5) %></td>
            </tr>
            <tr>
                <td>Arrival Time</td>
                <td><%=rs.getString(6) %></td>
            </tr>
           <tr>
                <td>booking Date</td>
                <td><%=rs.getString(4) %></td>
            </tr>
            
            <tr>
                <td>Seat No.</td>
                <td><%=rs.getString(12) %></td>
            </tr>
            <tr >
                <td>Total</td>
                <td class="mmk">MMK<%=rs.getString(7) %></td>
            </tr>

            <tr>
        		<td style="text-decoration: underline;font-weight: bold; ">Traveller Information</td>
        		<td></td>
        		
        	</tr>
        	<tr>
        		<td>Traveller Name</td>
        		<td><%=rs.getString(13) %></td>
        		
        	</tr>
        	<tr>
        		<td>Gender</td>
        		<td><%=rs.getString(14) %></td>
        	</tr>
        	<tr>
        		<td>phone</td>
        		<td><%=rs.getString(16) %></td>
        	</tr>
        	<tr>
        		<td>Email</td>
        		<td><%=rs.getString(17) %></td>
        	</tr>
        	<tr>
        		<td>Special Request </td>
        		<td><%=rs.getString(18) %></td>
        	</tr>
        	
        	<tr>
        		<td>NRC*</td>
        		<td><%=rs.getString(15) %></td>
        	</tr>
        	 <tr  >
        	  
                <td colspan="2"><a href="destination.jsp "> <button class="prev-step">Back</button></a></td>
               
            </tr>
        	</tbody>
        </table>
        </section>
        <section class="Travell_2">
            <!-- for drop down -->


        <div class="menu-btn">
            <div class="Travell_text">
            <img src="img/wave.jpg" width="60px" height="50px" style="padding-left: 20px; ">
             <h3>WAVE PAY</h3>
            </div>
   		</div>
   <div class="side-bar">

     <div class="close-btn">
        WAVE PAY
       <i class="fas fa-times"></i>
     </div>
     <div class="close-btn1">
        <img src="img/wave.jpg" width="80px" height="70px" style="border-radius: 50%; ">
         WAVE PAY<br>MMK
     </div>
     <div class="close-btn1">
        <h3>Total</h3>
        <h3>MMK&nbsp;<%=rs.getString(7) %></h3>
     </div>
      
      <div class="close-btn2">
         <p>By proceedin with payment, you agree to the terms and conditions.</p>
          <div class="close-btn3">
       <a href="wavepay.jsp" class="a">Payment</a>
        </div>
     </div>
   </div>
      <div class="menu1-btn">
            <div class="Travell_text">
            <img src="img/kpay.png" width="60px" height="50px" style="padding-left: 20px; ">
             <h3>KBZ PAY</h3>
            </div>
        </div>
   <div class="side1-bar">

     <div class="close1-btn">
        KBZ PAY
       <i class="fas fa-times"></i>
     </div>
     <div class="close-btn1">
        <img src="img/kpay.png" width="80px" height="70px">
         PBZ PAY<br>MMK
     </div>
     <div class="close-btn1">
        <h3>Total</h3>
        <h3>MMK&nbsp;<%=rs.getString(7) %></h3>
     </div>
     <%  }	
        						} catch (SQLException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        							%>
      <div class="close-btn2">
         <p>By proceedin with payment, you agree to the terms and conditions.</p>
          <div class="close-btn3">
     		<a href="kbzpay.jsp" class="a">Payment</a>
        </div>
     </div>
   </div>
   <script type="text/javascript">
   $(document).ready(function(){
     //jquery for toggle sub menus

     //jquery for expand and collapse the sidebar
     $('.menu-btn').click(function(){
       $('.side-bar').addClass('active');
       $('.menu-btn').css("visibility", "hidden");
     });

     $('.close-btn').click(function(){
       $('.side-bar').removeClass('active');
       $('.menu-btn').css("visibility", "visible");
     });


      $('.menu1-btn').click(function(){
       $('.side1-bar').addClass('active');
       $('.menu1-btn').css("visibility", "hidden");
     });

     $('.close1-btn').click(function(){
       $('.side1-bar').removeClass('active');
       $('.menu1-btn').css("visibility", "visible");
     });
   });
   </script>

        </section>  
       
</section>
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