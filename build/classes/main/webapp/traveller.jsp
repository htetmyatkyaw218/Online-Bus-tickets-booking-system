<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="routeinfo.css">
  <script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
   <link rel="stylesheet" href="route.css" />
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style type="text/css">
  .input-bx input{
  padding-left: 30px;
  }
  .mid_bar .update{
  
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
        <li><a href="home.jsp"> <i class="fas fa-sign-out-alt"></i>Log out</a></li>
        <li><a href="ahome.jsp"><i class="fas fa-home"></i> Home</a></li>
      </ul>
    </div>
  </div>
  </div>
</header>
<div class="mid_bar">
<div class="bord">
    <section class="main">
      <div class="main-top">
        <h1>Travller Information</h1>
      </div>
       </div>
        <form action="destina" method="post">
      <div class="input-bx">
   
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
             <input type="text" id="date-picker" class="form-control"placeholder=" DEPARTURE TIME" name="date" >
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
           <input type="submit" value="Search" >
        </div>
        </form>
          <div class="main-skills">
        <table >
        	<thead>
        	<tr>
        		<th>Seat No</th>
        		<th>Name</th>
        		<th>Phone</th>
        		<th>Email</th>
        		<th>NRC</th>
        		<th>Gender</th>
        		<th>Date</th>
        		<th>Special Request</th>
        		<th>Delete</th>
        	</tr>
        	</thead>
        	<%try{
	Class.forName("com.mysql.jdbc.Driver");
			}
			catch(ClassNotFoundException e){
				e.printStackTrace();
			}
			String selectquery="";
			
			 selectquery="select * from information";
			Connection conn; 
			try{
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
				Statement st=conn.createStatement();
				ResultSet rs=st.executeQuery(selectquery);
				while(rs.next()){
					%>
        	<tbody>
        	<tr><td><%=rs.getString(2) %></td>
        		<td><%=rs.getString(3) %></td>
        		<td><%=rs.getString(6) %></td>
        		<td><%=rs.getString(7) %></td>
        		<td><%=rs.getString(5) %></td>
        		<td><%=rs.getString(4) %></td>
        		<td><%=rs.getString(11) %></td>
        		<td><%=rs.getString(8) %></td>
				<td><a href="travellerde?method=get&id=<%=rs.getString(1) %>" class="a">&nbsp;&nbsp;<i class="fa-solid fa-user-xmark"></i>&nbsp;&nbsp;</a></td>
        	</tr>
        	</tbody>
        	<%  
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			%>
        	
        </table>


      </div>
   </section> <!--  main -->
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