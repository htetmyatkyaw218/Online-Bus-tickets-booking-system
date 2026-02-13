<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Flight ticket challange</title>
  <link rel="stylesheet" href="ticket.css">
   <link rel="stylesheet" type="text/css" href="des.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
<div class="image"><img src="img/30.png"></div>
<section class="body">
<main class="ticket-system">
   <div class="top">
   <h1 class="title">Thank For Your Booking</h1>
   <div class="printer" />
   </div>
   <div class="receipts-wrapper">
      <div class="receipts">
         <div class="receipt">
            
    <div class="lo" style="display: flex; flex-direction: row; border-bottom: 2px dashed; ">
      <h1><img src="img/p2.jpg" width="50px" height="50px" style="border-radius: 50%; ">Crown BusTicket</h1>
    </div><%try{
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
        			//String seat=request.getParameter("seatno");
        			String seat=(String)session.getAttribute("seatno");
        			selectquery="select * from route, information where route.source like'%"+from+"%'=information.source like'%"+from+"%' and route.destination like '%"+to+"%'=information.destination like '%"+to+"%' and route.Date like'%"+Date+"%'=information.Date like'%"+Date+"%' and information.seat='"+seat+"'";
        			
        			Connection conn; 
        			try{
        				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
        				Statement st=conn.createStatement();
        				ResultSet rs=st.executeQuery(selectquery);
        				if(rs.next()) {
        					
        					%>
            <div class="route">
               <h3><%=rs.getString(2) %></h3>
               <i class="fa-solid fa-arrow-right"></i>
               </svg>
               <h3><%=rs.getString(3) %></h3>
            </div>
            <div class="details">
               <div class="item">
                  <span>Passanger</span>
                  <h3><%=rs.getString(13) %></h3>
               </div>
               <div class="item">
                  <span>DATE</span>
                  <h3><%=rs.getString(4) %></h3>
               </div>
               <div class="item">
                  <span>Departure</span>
                  <h3><%=rs.getString(5) %></h3>
               </div>
               <div class="item">
                  <span>Price</span>
                  <h3>MMK<%=rs.getString(7) %></h3>
               </div>
               
                <div class="item">
                  <span>Arrive</span>
                  <h3><%=rs.getString(6) %></h3>
               </div>
               <div class="item">
                  <span>Phone</span>
                  <h3><%=rs.getString(16) %></h3>
               </div>
               <div class="item">
                  <span>email</span>
                  <h3><%=rs.getString(17) %></h3>
               </div>
               <div class="item">
                  <span>Seat</span>
                  <h3><%=rs.getString(12) %></h3>
               </div>
                <%  }	
        						} catch (SQLException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        							%>
         </div>
      </div>
   </div>
</main>
<!-- partial -->
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