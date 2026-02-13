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
    <script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="profile.css">
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
                
            </ul>
        </div>
    </div>
    </div>
</header>
<section class="body">
<div class="mid_bar">
    <div class="bord">
    
    <div class="navbar-top">
        <div class="title">
            <h1>Profile</h1>
        </div>

        <!-- Navbar -->
        <ul>
            <li>
                <a href="ahome.jsp">
                      <i class="fas fa-home fa-2x"></i>
                </a>
            </li>
            <li>
                <a href="home.jsp">
                    <i class="fa fa-sign-out-alt fa-2x"></i>
                </a>
            </li>
        </ul>
        <!-- End -->
    </div>
    <!-- End -->

    <!-- Sidenav -->
    <div class="sidenav">
        <div class="profile">
            <img src="img/admin.png" alt="" width="100" height="100">
			 <%try{
        	Class.forName("com.mysql.jdbc.Driver");
        			}
        			catch(ClassNotFoundException e){
        				e.printStackTrace();
        			}
        			String selectquery="";
        			String routeid=request.getParameter("id");
        			 selectquery="select * from admin where admin_id='"+routeid+"'";
        			Connection conn; 
        			try{
        				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
        				Statement st=conn.createStatement();
        				ResultSet rs=st.executeQuery(selectquery);
        				while(rs.next()) {
        					%>
            <div class="name">
              <%=rs.getString(2) %>
            </div>
           
        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="#profile" class="active">Profile</a>
                <hr align="center">
            </div>
             
        </div>
    </div>
    <!-- End -->

    <!-- Main -->
    <div class="main">
        <h2>IDENTITY</h2>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <table>
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td>:</td>
                            <td><%=rs.getString(2) %></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td><%=rs.getString(3) %></td>
                        </tr>
                        
                        <tr>
                            <td>Phone</td>
                            <td>:</td>
                            <td><%=rs.getString(5) %></td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>:</td>
                            <td><%=rs.getString(4) %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        
    </div>
     <% }
          				String  seat=request.getParameter("seat");
        				HttpSession session1=request.getSession();
		                session1.setAttribute("seat", seat);

        						} catch (SQLException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        							%>
    
    </section>
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