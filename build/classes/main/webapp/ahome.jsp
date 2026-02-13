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
   <link rel="stylesheet" href="s.css" />
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style type="text/css">
.main-skills .bo{
   background: #fff;
  color: #fff;
   padding: 7px 15px;
  border-radius: 10px;
  margin-top: 15px;
  cursor: pointer;
  width: 10px;
  height: 50px;
}
.box button{
  position: absolute;
  top:-19px;
  width:100px;
}
.box .bu{
  height: 40px;
  background:rgb(235, 233, 233);
  color: #fff;
  padding: 7px 10px;
  border-radius: 10px;
  margin-top: 3rem;
  width: 20px;
  cursor: pointer;
  display: flex;
}
.box i{
  font-size: 4rem;
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
        </a></li>
       <%try{
	Class.forName("com.mysql.jdbc.Driver");
			}
			catch(ClassNotFoundException e){
				e.printStackTrace();
			}
			String selectquery="";
			String name=request.getParameter("name");
			 selectquery="select * from admin where name like '%"+name+"%'";
			Connection conn; 
			try{
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
				Statement st=conn.createStatement();
				ResultSet rs=st.executeQuery(selectquery);
				while(rs.next()) {
					%>
        <li><a href="#">
          <span class="nav-item" >  <h3 style="padding-left: 20px; ">Welcome<br><%=rs.getString(2) %></h3></span>
        </a></li>
        <li><a href="profile.jsp?method=get&id=<%=rs.getString(1)%>" >
          <i class="fas fa-user"></i>
         	 <span class="nav-item">Profile</span>
        </a></li>
        <%  
				}
							
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
							%>
		 <li><a href="ahome.jsp">
          <i class="fas fa-home"></i>
          <span class="nav-item">Home</span>
        </a></li>
        <li><a href="home.jsp"class="logout">
          <i class="fas fa-sign-out-alt"></i>
          <span class="nav-item">Log out</span>
        </a></li>
      </ul>
    </nav>
    <section class="main">
      <div class="main-top">
        <h1>Information</h1>
       
      </div>
      <div class="main-skills">
        <div class="card">
         <i class="fa-solid fa-route"></i>
          <h3>Routes </h3>
          <p> If you want to see more  </p>
         <a href="routeinfo.jsp" class="bo" > <button> Show</button></a>
        </div>
        <div class="card">
        <i class="fa-solid fa-bus"></i>
          <h3>Booking</h3>
           <p> If you want to see more  </p>
          <a href="booking.jsp" class="bo" ><button>Show</button></a>
        </div>
        <div class="card">
          <i class="fa-solid fa-people-group"></i>
          <h3>Traveller Info</h3>
          <p> If you want to see more  </p>
         <a href="traveller.jsp" class="bo" > <button>Show</button></a>
        </div>
        <div class="card">
        <i class="fas fa-user-cog"></i>
          <h3>Admin</h3>
          <p> If you want to see more  </p>
         <a href="admininfo.jsp" class="bo" > <button>Show</button></a>
        </div>
      </div>

      <section class="main-course">
        <h1>ADDING</h1>
        <div class="course-box">
          <ul>
            <li class="active">Title</li>
            <li>Routes</li>
            <li>Traveller Info</li>
          </ul>
          <div class="course">
            <div class="box">
              <h3>Routes</h3>
              <p>for adding routes</p>
              <a href="routeadd.jsp" class="bu" ><button>ADD</button></a>
              <i class="fa-solid fa-route"></i>
            </div>
           
            <div class="box">
              <h3>ADD Admin</h3>
              <p>add Admin team <br> members</p>
             <a href="addadmin.jsp" class="bu" > <button>ADD</button></a>
                <i class="fa-solid fa-people-group"></i>
            </div>
          </div>
        </div>
      </section>
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