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
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style type="text/css">
  .a{
  width: 120px;
  height: 30px;
  background-color: #33AFFF;
  border-radius: 10px;
  justify-content: center;
   padding: 5px;
   text-decoration: none;
}
.a:hover{
  background-color:#3742fa;
}
.a p{
 display: flex;
    justify-content: center;
    padding-top: 6px;
}
.a i{
 padding-top: 3px;
  padding-left: 5px;
}
.main-top .member{
 display: flex;
 flex-direction: row;
 padding-left: 500px;
}
.main-top .box-info{
  width: 250px;
  height: 60px;
  background-color: white;
  display: flex;
  flex-direction: row;
  border-radius: 10px ;
}
.main-top .box-info .icon{
  width: 100px;
  height: 40px;
  background-color:#33AFFF;
 margin: 10px;
 border-radius: 10px;
}
.main-top .box-info .icon i{
 font-size: 20px;
 padding: 10px;
 padding-left: 25px;
}
.main-top .box-info .text{
  width: 150px;
  height: auto;
  margin: 8px;
}
.main-skills td{
 height:60px;
  border-bottom: 1px dashed;
}
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
        <li><a href="home.jsp"class="logout">
          <i class="fas fa-sign-out-alt"></i>
          <span class="nav-item">Log out</span>
        </a></li>
      </ul>
    </nav>
    <section class="main">
      <div class="main-top">
      <%try{
	Class.forName("com.mysql.jdbc.Driver");
			}
			catch(ClassNotFoundException e){
				e.printStackTrace();
			}
			String count="select count(route_id) from route";
			Connection conn; 
			try{
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
				Statement st=conn.createStatement();
			
				ResultSet rs1=st.executeQuery(count);
				int coun=0;
				if(rs1.next()){
					coun=rs1.getInt(1);
				}%>
        <h1>Booking Information</h1>
      <div class="member">
         <div class="box-info">
            <div class="icon">
           <i class="fa-solid fa-route"></i>
          </div>
          <div class="text">
            <h3><%=coun %></h3>
            <p>Routes</p>
          </div>
       
        </div>
       </div>
        <%  
			
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		%>
      
		</div>
      <div class="main-skills">
        <table border="1" >
        	<thead>
        	<tr style="height: 50px;">
        		<th>Source</th>
        		<th>Destination</th>
        		<th>Date</th>
        		<th>Show Booking</th>
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
			
			 selectquery="select * from route";
			Connection conn1; 
			try{
				conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
				Statement st=conn1.createStatement();
				ResultSet rs=st.executeQuery(selectquery);
				
				while(rs.next()){
					%>
        	<tbody>
        	<tr>
        		<td><%=rs.getString(2) %></td>
        		<td><%=rs.getString(3) %></td>
        		<td><%=rs.getString(4) %></td>
        		<td><a href="book.jsp?method=get&from=<%=rs.getString(2)%>&to=<%=rs.getString(3)%>&date=<%=rs.getString(4)%>" class="a"><p>Show Book<i class="fa-solid fa-eye"></i></p></a></td>
        		<td><a href="debook?method=get&from=<%=rs.getString(2)%>&to=<%=rs.getString(3)%>&date=<%=rs.getString(4)%>" class="a"><p style="padding: 10px; " ><i class="fa-solid fa-trash fa-lg"></i></p></a></td>
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