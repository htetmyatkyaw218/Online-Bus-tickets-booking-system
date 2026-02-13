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
   <link rel="stylesheet" href="profileser.css" />
    <link rel="stylesheet" href="reg.css" />
  
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
        
      </ul>
    </div>
  </div>
  </div>
</header>
<div class="mid_bar">
<div class="bord">
  <div class="container">
    <nav>
      <ul>
        <li><a href="#" class="logo">
          <img src="img/admin.png" alt="">
          <span class="nav-item">Admin </span>
        </a>
      </li>
        <li><a href="ahome.jsp">
          <i class="fas fa-home"></i>
          <span class="nav-item">Home</span>
        </a></li>
          <li><a href="admininfo.jsp">
        <i class="fas fa-backward"></i>
          <span class="nav-item">Back</span>
        </a></li>
        <li><a href="home.jsp"class="logout">
          <i class="fas fa-sign-out-alt"></i>
          <span class="nav-item">Log out</span>
        </a></li>
      </ul>
    </nav>
    <section class="main">
      <div class="main-top">
        <div class="contain">
      <h1 class="form-title">Update Admin Team Members</h1>
       <%
String rno=request.getParameter("admin_id");
try{
	Class.forName("com.mysql.jdbc.Driver");
}catch(ClassNotFoundException e){
	e.printStackTrace();
}
String selectquery="select * from admin where admin_id="+rno;
Connection conn;
try{
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(selectquery);
while(rs.next())
{
%>
      <form action="admin" method="post">
      <input type="hidden" name="admin_id" value="<%=rs.getString(1) %>">
        <div class="main-user-info">
       
          <div class="user-input-box">
            <label for="username">Name</label>
            <input type="text"name="name" value="<%=rs.getString(2)%>" >
          </div>
          <div class="user-input-box">
            <label for="username">Email</label>
            <input type="text"name="email" value="<%=rs.getString(3)%>" >
          </div>
          <div class="user-input-box">
            <label for="fullName"> Gender</label>
          <input type="text"name="gender" value="<%=rs.getString(4)%>" >
          </div>
          <div class="user-input-box">
            <label for="username">Phone No</label>
           <input type="text"name="phone" value="<%=rs.getString(5)%>">
          </div>
          <div class="user-input-box">
            <label for="username">Password </label>
           <input type="text"name="password" value="<%=rs.getString(6)%>">
          </div>
    
        </div>
       
        <div class="form-submit-btn">
          <input type="submit" value="Update">
        </div>
      </form>
      <% }
}
catch(SQLException e){
	e.printStackTrace();
}
%>
    </div>
       
      </div>

      
    </section>
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