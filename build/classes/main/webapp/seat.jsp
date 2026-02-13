<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
      <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="seat.css">
<title>Insert title here</title>
</head>
<body>
        <div class="seat_box">
            <section class="seat_1">
                <div class="seat_text">
                    <p>Please select 1 Seat(s)</p>
                </div>
        <div class="container">
    <div class="plane">
        <ol class="cabin fuselage">
       <form action="travel" method="get">
<li class="seat"> 
                <input type="checkbox">
                <label class="diver">Diver</label>
            </li>
            
             <% 
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
             String selectquery="";
 			HttpSession session1=request.getSession();
 			String from=(String)session.getAttribute("source");
 			String to=(String)session.getAttribute("destination");
 			String Date=(String)session.getAttribute("Date");
 			//String from=request.getParameter("source");
 			//String to=request.getParameter("destination");
 			//String Date=request.getParameter("Date");
 			
 			 selectquery="select seat from information where information.source like'%"+from+"%' and information.destination like '%"+to+"%' and information.Date like'%"+Date+"%'";
 			
            ArrayList<Integer> seatlist = new ArrayList<Integer>();
            
            Connection conn;
            try {
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(selectquery);
                while (rs.next()) {
                    seatlist.add(rs.getInt(1));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            boolean[] found = new boolean[42]; // Create an array of boolean values with 41 elements
            
            for (int i = 1; i <= 41; i++) {
                for (int j = 0; j < seatlist.size(); j++) {
                    if (seatlist.get(j) == i) {
                        found[i] = true;
                        break; // Break the inner loop once a seat is found
                    }
                }
                // Generate HTML based on found status
                 /*/  if (found[i]) {
                    out.print(" <input type=\"submit\" name=\"seat\" value=\"" + i + "\" style=\"background-color:red\" disabled>");
                } else {
                    out.print(" <input type=\"submit\" name=\"seat\" value=\"" + i + "\" style=\"background-color:blue\">");
                }*/
            }
            out.println("<li class=\"row row--1\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[1]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"1\" name=\"che\" value=\"1\"onclick=\"showseat1()\" /disabled><label for=\"1\">1</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"1\" name=\"che\" value=\"1\"onclick=\"showseat1()\" /><label for=\"1\">1</label></li>");
            }
            if (found[2]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"2\" name=\"che\" value=\"2\" onclick=\"showseat2()\"/disabled><label for=\"2\" >2</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"2\" name=\"che\" value=\"2\" onclick=\"showseat2()\"/><label for=\"2\" >2</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[3]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"3\" name=\"che\" value=\"3\"onclick=\"showseat3()\" /disabled><label for=\"3\" >3</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"3\" name=\"che\" value=\"3\"onclick=\"showseat3()\" /><label for=\"3\" >3</label> </li>");
            }
            if (found[4]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"4\"  name=\"che\"value=\"4\"onclick=\"showseat4()\"/disabled> <label for=\"4\">4</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"4\"  name=\"che\"value=\"4\"onclick=\"showseat4()\"/> <label for=\"4\">4</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            
            out.println("<li class=\"row row--2\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[5]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"5\" name=\"che\" value=\"5\"onclick=\"showseat5()\" /disabled><label for=\"5\">5</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"5\" name=\"che\" value=\"5\"onclick=\"showseat5()\" /><label for=\"5\">5</label></li>");
            }
            if (found[6]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"6\" name=\"che\" value=\"6\" onclick=\"showseat6()\"/disabled><label for=\"6\" >6</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"6\" name=\"che\" value=\"6\" onclick=\"showseat6()\"/><label for=\"6\" >6</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[7]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"7\" name=\"che\" value=\"7\"onclick=\"showseat7()\" /disabled><label for=\"7\" >7</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"7\" name=\"che\" value=\"7\"onclick=\"showseat7()\" /><label for=\"7\" >7</label> </li>");
            }
            if (found[8]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"8\"  name=\"che\"value=\"8\"onclick=\"showseat8()\"/disabled> <label for=\"8\">8</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"8\"  name=\"che\"value=\"8\"onclick=\"showseat8()\"/> <label for=\"8\">8</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            out.println("<li class=\"row row--3\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[9]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"9\" name=\"che\" value=\"9\"onclick=\"showseat9()\" /disabled><label for=\"9\">9</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"9\" name=\"che\" value=\"9\"onclick=\"showseat9()\" /><label for=\"9\">9</label></li>");
            }
            if (found[10]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"10\" name=\"che\" value=\"10\" onclick=\"showseat10()\"/disabled><label for=\"10\" >10</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"10\" name=\"che\" value=\"10\" onclick=\"showseat10()\"/><label for=\"10\" >10</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[11]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"11\" name=\"che\" value=\"11\"onclick=\"showseat11()\" /disabled><label for=\"11\" >11</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"11\" name=\"che\" value=\"11\"onclick=\"showseat11()\" /><label for=\"11\" >11</label> </li>");
            }
            if (found[12]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"12\"  name=\"che\"value=\"12\"onclick=\"showseat12()\"/disabled> <label for=\"12\">12</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"12\"  name=\"che\"value=\"12\"onclick=\"showseat12()\"/> <label for=\"12\">12</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            
            out.println("<li class=\"row row--4\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[13]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"13\" name=\"che\" value=\"13\"onclick=\"showseat13()\" /disabled><label for=\"13\">13</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"13\" name=\"che\" value=\"13\"onclick=\"showseat13()\" /><label for=\"13\">13</label></li>");
            }
            if (found[14]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"14\" name=\"che\" value=\"14\" onclick=\"showseat14()\"/disabled><label for=\"14\" >14</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"14\" name=\"che\" value=\"14\" onclick=\"showseat14()\"/><label for=\"14\" >14</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[15]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"15\" name=\"che\" value=\"15\"onclick=\"showseat15()\" /disabled><label for=\"15\" >15</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"15\" name=\"che\" value=\"15\"onclick=\"showseat15()\" /><label for=\"15\" >15</label> </li>");
            }
            if (found[16]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"16\"  name=\"che\"value=\"16\"onclick=\"showseat16()\"/disabled> <label for=\"16\">16</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"16\"  name=\"che\"value=\"16\"onclick=\"showseat16()\"/> <label for=\"16\">16</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            out.println("<li class=\"row row--5\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[17]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"17\" name=\"che\" value=\"17\"onclick=\"showseat17()\" /disabled><label for=\"17\">17</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"17\" name=\"che\" value=\"17\"onclick=\"showseat17()\" /><label for=\"17\">17</label></li>");
            }
            if (found[18]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"18\" name=\"che\" value=\"18\" onclick=\"showseat18()\"/disabled><label for=\"18\" >18</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"18\" name=\"che\" value=\"18\" onclick=\"showseat18()\"/><label for=\"18\" >18</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[19]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"19\" name=\"che\" value=\"19\"onclick=\"showseat19()\" /disabled><label for=\"19\" >19</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"19\" name=\"che\" value=\"19\"onclick=\"showseat19()\" /><label for=\"19\" >19</label> </li>");
            }
            if (found[20]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"20\"  name=\"che\"value=\"20\"onclick=\"showseat20()\"/disabled> <label for=\"20\">20</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"20\"  name=\"che\"value=\"20\"onclick=\"showseat20()\"/> <label for=\"20\">20</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            out.println("<li class=\"row row--6\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[21]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"21\" name=\"che\" value=\"21\"onclick=\"showseat21()\" /disabled><label for=\"21\">21</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"21\" name=\"che\" value=\"21\"onclick=\"showseat21()\" /><label for=\"21\">21</label></li>");
            }
            if (found[22]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"22\" name=\"che\" value=\"22\" onclick=\"showseat22()\"/disabled><label for=\"22\" >22</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"22\" name=\"che\" value=\"22\" onclick=\"showseat22()\"/><label for=\"22\" >22</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[23]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"23\" name=\"che\" value=\"23\"onclick=\"showseat23()\" /disabled><label for=\"23\" >23</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"23\" name=\"che\" value=\"23\"onclick=\"showseat23()\" /><label for=\"23\" >23</label> </li>");
            }
            if (found[24]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"24\"  name=\"che\"value=\"24\"onclick=\"showseat24()\"/disabled> <label for=\"24\">24</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"24\"  name=\"che\"value=\"24\"onclick=\"showseat24()\"/> <label for=\"24\">24</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            out.println("<li class=\"row row--7\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[25]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"25\" name=\"che\" value=\"25\"onclick=\"showseat25()\" /disabled><label for=\"25\">25</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"25\" name=\"che\" value=\"25\"onclick=\"showseat25()\" /><label for=\"25\">25</label></li>");
            }
            if (found[26]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"26\" name=\"che\" value=\"26\" onclick=\"showseat26()\"/disabled><label for=\"26\" >26</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"26\" name=\"che\" value=\"26\" onclick=\"showseat26()\"/><label for=\"26\" >26</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[27]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"27\" name=\"che\" value=\"27\"onclick=\"showseat27()\" /disabled><label for=\"27\" >27</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"27\" name=\"che\" value=\"27\"onclick=\"showseat27()\" /><label for=\"27\" >27</label> </li>");
            }
            if (found[28]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"28\"  name=\"che\"value=\"28\"onclick=\"showseat28()\"/disabled> <label for=\"28\">28</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"28\"  name=\"che\"value=\"28\"onclick=\"showseat28()\"/> <label for=\"28\">28</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            out.println("<li class=\"row row--8\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[29]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"29\" name=\"che\" value=\"29\"onclick=\"showseat29()\" /disabled><label for=\"29\">29</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"29\" name=\"che\" value=\"29\"onclick=\"showseat29()\" /><label for=\"29\">29</label></li>");
            }
            if (found[30]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"30\" name=\"che\" value=\"30\" onclick=\"showseat30()\"/disabled><label for=\"30\" >30</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"30\" name=\"che\" value=\"30\" onclick=\"showseat30()\"/><label for=\"30\" >30</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[31]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"31\" name=\"che\" value=\"31\"onclick=\"showseat31()\" /disabled><label for=\"31\" >31</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"31\" name=\"che\" value=\"31\"onclick=\"showseat31()\" /><label for=\"31\" >31</label> </li>");
            }
            if (found[32]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"32\"  name=\"che\"value=\"32\"onclick=\"showseat32()\"/disabled> <label for=\"32\">32</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"32\"  name=\"che\"value=\"32\"onclick=\"showseat32()\"/> <label for=\"32\">32</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            out.println("<li class=\"row row--9\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[33]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"33\" name=\"che\" value=\"33\"onclick=\"showseat33()\" /disabled><label for=\"33\">33</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"33\" name=\"che\" value=\"33\"onclick=\"showseat33()\" /><label for=\"33\">33</label></li>");
            }
            if (found[34]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"34\" name=\"che\" value=\"34\" onclick=\"showseat34()\"/disabled><label for=\"34\" >34</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"34\" name=\"che\" value=\"34\" onclick=\"showseat34()\"/><label for=\"34\" >34</label> </li>");
            }
            out.println("<li class=\"seat empty\"></li> <!-- Empty space between the seats -->");
            if (found[35]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"35\" name=\"che\" value=\"35\"onclick=\"showseat35()\" /disabled><label for=\"35\" >35</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"35\" name=\"che\" value=\"35\"onclick=\"showseat35()\" /><label for=\"35\" >35</label> </li>");
            }
            if (found[36]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"36\"  name=\"che\"value=\"36\"onclick=\"showseat36()\"/disabled> <label for=\"36\">36</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"36\"  name=\"che\"value=\"36\"onclick=\"showseat36()\"/> <label for=\"36\">36</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
            
            
            out.println("<li class=\"row row--10\">\r\n"
					+ "                <ol class=\"seats\" type=\"A\">\r\n"
					+ "                    ");
            if (found[37]) {
            	out.println("<li class=\"seat\"><input type=\"checkbox\" id=\"37\" name=\"che\" value=\"37\"onclick=\"showseat37()\" /disabled><label for=\"37\">37</label></li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"37\" name=\"che\" value=\"37\"onclick=\"showseat37()\" /><label for=\"37\">37</label></li>");
            }
            if (found[38]) {
            	out.println(" <li class=\"seat\"><input type=\"checkbox\" id=\"38\" name=\"che\" value=\"38\" onclick=\"showseat38()\"/disabled><label for=\"38\" >38</label> </li>");
            } else {
                out.print("<li class=\"seat\"><input type=\"checkbox\" id=\"38\" name=\"che\" value=\"38\" onclick=\"showseat38()\"/><label for=\"38\" >38</label> </li>");
            }

            if (found[39]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"39\" name=\"che\" value=\"39\"onclick=\"showseat39()\" /disabled><label for=\"39\" >39</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"39\" name=\"che\" value=\"39\"onclick=\"showseat39()\" /><label for=\"39\" >39</label> </li>");
            }
            if (found[40]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"40\" name=\"che\" value=\"40\"onclick=\"showseat40()\" /disabled><label for=\"40\" >40</label> </li>");
            } else {
                out.print("<li class=\"seat\"> <input type=\"checkbox\" id=\"40\" name=\"che\" value=\"40\"onclick=\"showseat40()\" /><label for=\"40\" >40</label> </li>");
            }
            if (found[41]) {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"41\"  name=\"che\"value=\"41\"onclick=\"showseat41()\"/disabled> <label for=\"41\">41</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");     
            } else {
            	out.println("<li class=\"seat\"> <input type=\"checkbox\" id=\"41\"  name=\"che\"value=\"41\"onclick=\"showseat41()\"/> <label for=\"41\">41</label> </li>\r\n"
    					+ "                </ol>\r\n"
    					+ "            </li>");  
            }
        %>
			
 </div>
</section>
	
	
	 <section class="seat_2">
        <div class="seat_text">
                    <p>Trip Information</p>
        </div>
         <%try{
        	Class.forName("com.mysql.jdbc.Driver");
        			}
        			catch(ClassNotFoundException e){
        				e.printStackTrace();
        			}
        			String selectquery1="";
        			String routeid=request.getParameter("id");
        			 selectquery1="select * from route where route_id='"+routeid+"'";
        			Connection conn1; 
        			try{
        				conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
        				Statement st=conn1.createStatement();
        				ResultSet rs=st.executeQuery(selectquery1);
        				while(rs.next()) {
        					%>
        <table>
            <tr >
                <td>Route</td>
                <td><%=rs.getString(2) %>-<%=rs.getString(3) %> </td>
            </tr>
            <tr class="tb">
                <td>Departure Time</td>
                <td><%=rs.getString(5) %></td>
            </tr>
            <tr>
                <td>Arrival Time</td>
                <td><%=rs.getString(6) %></td>
            </tr>
            <tr class="tb" >
                <td>Total</td>
                <td class="mmk">MMK<%=rs.getString(7) %></td>
            </tr>
        </table>
          <% }

        						} catch (SQLException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        							%>
     </div>                
</section>
<section class="seat_3">
    <div class="seat_text">
                    <p>Seat Selection</p>
        </div>
        <p >Please select 1 seat.</p>
        <h3 id=seats > </h3>
       
<script>
document.addEventListener('DOMContentLoaded', function () {
    const seatCheckboxes = document.querySelectorAll('.seat input[type="checkbox"]');
    let selectedSeatId = null; // To track the selected seat

    seatCheckboxes.forEach(seatCheckbox => {
        seatCheckbox.addEventListener('change', function () {
            const seatId = seatCheckbox.id;

            if (seatCheckbox.checked) {
                // Uncheck the previously selected seat
                if (selectedSeatId !== null && selectedSeatId !== seatId) {
                    const previousSelectedCheckbox = document.getElementById(selectedSeatId);
                    if (previousSelectedCheckbox) {
                        previousSelectedCheckbox.checked = false;
                    }
                }
                selectedSeatId = seatId;
            } else {
                selectedSeatId = null;
            }
        });
    });
});
function showseat1()
{

    document.getElementById("seats").innerHTML=1;
	document.getElementById("seatno").innerHTML=1;
	document.getElementById("seatnumber").value=1;
    
    }
function showseat2()
{
	
    document.getElementById("seats").innerHTML=2;
    document.getElementById("seatno").innerHTML=2;
    document.getElementById("seatnumber").value=2;
    }
function showseat3()
{
	
    document.getElementById("seats").innerHTML=3;
    document.getElementById("seatno").innerHTML=3;
    document.getElementById("seatnumber").value=3;
    }
function showseat4()
{
	
    document.getElementById("seats").innerHTML=4;
    document.getElementById("seatno").innerHTML=4;
    document.getElementById("seatnumber").value=4;
    }
function showseat5()
{
	
    document.getElementById("seats").innerHTML=5;
    document.getElementById("seatno").innerHTML=5;
    document.getElementById("seatnumber").value=5;
    }
function showseat6()
{
	
    document.getElementById("seats").innerHTML=6;
    document.getElementById("seatno").innerHTML=6;
    document.getElementById("seatnumber").value=6;
    }
function showseat7()
{
	
    document.getElementById("seats").innerHTML=7;
    document.getElementById("seatno").innerHTML=7;
    document.getElementById("seatnumber").value=7;
    }
function showseat8()
{
	
    document.getElementById("seats").innerHTML=8;
    document.getElementById("seatno").innerHTML=8;
    document.getElementById("seatnumber").value=8;
    }
function showseat9()
{
	
    document.getElementById("seats").innerHTML=9;
    document.getElementById("seatno").innerHTML=9;
    document.getElementById("seatnumber").value=9;
    }
function showseat10()
{
	
    document.getElementById("seats").innerHTML=10;
    document.getElementById("seatno").innerHTML=10;
    document.getElementById("seatnumber").value=10;
    }
function showseat11()
{
	
    document.getElementById("seats").innerHTML=11;
    document.getElementById("seatno").innerHTML=11;
    document.getElementById("seatnumber").value=11;
    }
function showseat12()
{
	
    document.getElementById("seats").innerHTML=12;
    document.getElementById("seatno").innerHTML=12;
    document.getElementById("seatnumber").value=12;
    }
function showseat13()
{
	
    document.getElementById("seats").innerHTML=13;
    document.getElementById("seatno").innerHTML=13;
    document.getElementById("seatnumber").value=13;
    }
function showseat14()
{
	
    document.getElementById("seats").innerHTML=14;
    document.getElementById("seatno").innerHTML=14;
    document.getElementById("seatnumber").value=14;
    }
function showseat15()
{
	
    document.getElementById("seats").innerHTML=15;
    document.getElementById("seatno").innerHTML=15;
    document.getElementById("seatnumber").value=15;
    }
function showseat16()
{
	
    document.getElementById("seats").innerHTML=16;
    document.getElementById("seatno").innerHTML=16;
    document.getElementById("seatnumber").value=16;
    }
function showseat17()
{
	
    document.getElementById("seats").innerHTML=17;
    document.getElementById("seatno").innerHTML=17;
    document.getElementById("seatnumber").value=17;
    }
function showseat18()
{
	
    document.getElementById("seats").innerHTML=18;
    document.getElementById("seatno").innerHTML=18;
    document.getElementById("seatnumber").value=18;
    }
function showseat19()
{
	
    document.getElementById("seats").innerHTML=19;
    document.getElementById("seatno").innerHTML=19;
    document.getElementById("seatnumber").value=19;
    }
function showseat20()
{
	
    document.getElementById("seats").innerHTML=20;
    document.getElementById("seatno").innerHTML=20;
    document.getElementById("seatnumber").value=20;
    }
function showseat21()
{
	
    document.getElementById("seats").innerHTML=21;
    document.getElementById("seatno").innerHTML=21;
    document.getElementById("seatnumber").value=21;
    }
function showseat22()
{
	
    document.getElementById("seats").innerHTML=22;
    document.getElementById("seatno").innerHTML=22;
    document.getElementById("seatnumber").value=22;
    }
function showseat23()
{
	
    document.getElementById("seats").innerHTML=23;
    document.getElementById("seatno").innerHTML=23;
    document.getElementById("seatnumber").value=23;
    }
function showseat24()
{
	
    document.getElementById("seats").innerHTML=24;
    document.getElementById("seatno").innerHTML=24;
    document.getElementById("seatnumber").value=24;
    }
function showseat25()
{
	
    document.getElementById("seats").innerHTML=25;
    document.getElementById("seatno").innerHTML=25;
    document.getElementById("seatnumber").value=25;
    }
function showseat26()
{
	
    document.getElementById("seats").innerHTML=26;
    document.getElementById("seatno").innerHTML=26;
    document.getElementById("seatnumber").value=26;
    }
function showseat27()
{
	
    document.getElementById("seats").innerHTML=27;
    document.getElementById("seatno").innerHTML=27;
    document.getElementById("seatnumber").value=27;
    }
function showseat28()
{
	
    document.getElementById("seats").innerHTML=28;
    document.getElementById("seatno").innerHTML=28;
    document.getElementById("seatnumber").value=28;
    }
function showseat29()
{
	
    document.getElementById("seats").innerHTML=29;
    document.getElementById("seatno").innerHTML=29;
    document.getElementById("seatnumber").value=29;
    }
function showseat30()
{
	
    document.getElementById("seats").innerHTML=30;
    document.getElementById("seatno").innerHTML=30;
    document.getElementById("seatnumber").value=30;
    }
function showseat31()
{
	
    document.getElementById("seats").innerHTML=31;
    document.getElementById("seatno").innerHTML=31;
    document.getElementById("seatnumber").value=31;
    }
function showseat32()
{
	
    document.getElementById("seats").innerHTML=32;
    document.getElementById("seatno").innerHTML=32;
    document.getElementById("seatnumber").value=32;
    }
function showseat33()
{
	
    document.getElementById("seats").innerHTML=33;
    document.getElementById("seatno").innerHTML=33;
    document.getElementById("seatnumber").value=33;
    }
function showseat34()
{
	
    document.getElementById("seats").innerHTML=34;
    document.getElementById("seatno").innerHTML=34;
    
    }
function showseat35()
{
	
    document.getElementById("seats").innerHTML=35;
    document.getElementById("seatno").innerHTML=35;
    document.getElementById("seatnumber").value=35;
    }
function showseat36()
{
	
    document.getElementById("seats").innerHTML=36;
    document.getElementById("seatno").innerHTML=36;
    document.getElementById("seatnumber").value=36;
    }
function showseat37()
{
    document.getElementById("seats").innerHTML=37;
    document.getElementById("seatno").innerHTML=37;
    document.getElementById("seatnumber").value=37;
    }
function showseat38()
{
	
    
    document.getElementById("seats").innerHTML=38;
    document.getElementById("seatno").innerHTML=38;
    document.getElementById("seatnumber").value=38;
    }
function showseat39()
{
    
    document.getElementById("seats").innerHTML=39;
    document.getElementById("seatno").innerHTML=39;
    document.getElementById("seatnumber").value=39;
    }
function showseat40()
{
    
    document.getElementById("seats").innerHTML=40;
    document.getElementById("seatno").innerHTML=40;
    document.getElementById("seatnumber").value=40;
    }
function showseat41()
{
    
    document.getElementById("seats").innerHTML=41;
    document.getElementById("seatno").innerHTML=41;
    document.getElementById("seatnumber").value=41;
}
</script>
         <button ><a href="destination.jsp" style="  text-decoration: none; ">Back</a></button>
        <button class="next-step" id="bookButton" type=submit>Continue To Trivaler Info</button>
</section>

</body>
</html>