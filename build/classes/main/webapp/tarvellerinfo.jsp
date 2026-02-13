<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>


<section class="Traveller">

        <section class="Traveller_1">
             <div class="Traveller_text">
                    <h4>Enter Traveller Information</h4>
            </div>
        <!-- Your content for Step 2 goes here -->
        <form action="travel" method="get">
        <p>Traveller Name* </p>
        <input type="text" name="name" class="inp" required >
        <p>Gender*</p>
        <select class="inp" name="gender" id="gender" >
                            <option value=""> --Select Gender-- </option>
                            
                            <option class="text-my" value="MALE" >
                                Male
                            </option>
                            
                            <option class="text-my" value="FEMALE" >
                                Female
                            </option>
                            
                        </select>
        <p>Phone* </p>
        <input type="number" name="phone"class="inp" placeholder="09- - - - - - - - -" required >
        <p>Email</p>
        <input type="email" name="email" class="inp" placeholder="Example: htet123@gamil.com" >
        <p>Special Request </p>
        <input type="text" name="request" class="inp" autocomplete="off"><br>
         <p>NRC* </p>
        <input type="text" name="nrc" class="inp" required placeholder="Example: 12/THAKATA(N)333333" >
        
                        <div class="checkbox">
                            <label>
                                <input id="agree-terms-checkbox" type="checkbox">
                                I confirm the above information are correct.<br>
                            </label>
                        </div>
        <input type=hidden id=seatnumber name=seatno>
        <button class="prev-step">Back</button>
        <button  type="submit" id="traveller-info-submit-button" disabled>Continue To Payment</button>
        </form>
         <script type="text/javascript">
         $(document).ready(function(){
         $('#agree-terms-checkbox').change(function(){

             if($("#agree-terms-checkbox").is(':checked')) {
                 $('#traveller-info-submit-button').prop('disabled', false);
             } else {
                 $('#traveller-info-submit-button').prop('disabled', true);
             }
         });
         });
        </script>  
        </section>
        <section class="Traveller_2">
            <div class="Traveller_text">
                    <h4>Booking Summary</h4>
            </div>
            <%try{
        	Class.forName("com.mysql.jdbc.Driver");
        			}
        			catch(ClassNotFoundException e){
        				e.printStackTrace();
        			}
        			String selectquery="";
        			String routeid=request.getParameter("id");
        			
        			 selectquery="select * from route where route_id='"+routeid+"'";
        			//selectquery="select * from route where source like'%"+from+"%' and destination like'%"+to+"%' and Date like'%"+Date+"%' ";
        			Connection conn; 
        			try{
        				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
        				Statement st=conn.createStatement();
        				ResultSet rs=st.executeQuery(selectquery);
        				while(rs.next()) {
        					
        					%>
        <table>
            <tr >
                <td>Route</td>
                <td ><%=rs.getString(2) %>-<%=rs.getString(3) %></td>
            </tr>
             
            <tr >
                <td> Date</td>
                <td><%=rs.getString(4) %></td>
            </tr>
           
            <tr >
                <td>Departure Time</td>
                <td><%=rs.getString(5) %></td>
            </tr>
            <tr>
                <td>Arrival Time</td>
                <td><%=rs.getString(6) %></td>
            </tr>
            <tr >
                <td>Total</td>
                <td class="mmk">MMK<%=rs.getString(7) %></td>
            </tr>
            <tr>
                <td>Seat No.</td>
                <td><p id="seatno" name="seat"> </td>
            </tr>
        </table>
        
        <table class="dop">
           <tr>
                <td>SubTotal</td>
                <td>MMK &nbsp;<%=rs.getString(7) %></td>
            </tr>
        </table>
        <%  }	
        						} catch (SQLException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        							%>
        </section>  
       
</section>
