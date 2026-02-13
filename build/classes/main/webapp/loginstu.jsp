<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Html Document Begins-->
<!DOCTYPE html>
<html>
     <!-- Header Section-->
<head>
      <style>
      .center {
   display: flex;
  justify-content: center;
  align-items: center;
 margin:auto;
  border: 3px solid pink;
  height:200px;
  background-image:url("bg1.jpeg");
  width:450px;
  margin-top:50px;
  
}
body{
background-color:#FBB1EE;}
form{
color:#81076B  ;}
</style>
 <title>
      Student Login Form
 </title>
 
</head>
           
     <!--Body of the Webpage-->
<body >
          <a href="studentreg.jsp">Register</a> 
          <!--Start of Form-->
          <div class="center">
          <form action="loginstu" method=post>
             <h2>Login Form</h2>
             
             <br>
             <table>
             
           <tr>
           <td>  <label>Username</label>
           <td>  <input type="text" placeholder="Enter Username" name="username" required></td>
           </tr>
           <tr>
           <td><label>Password</label></td>
           <td><input type="password" placeholder="Enter password" name="password" maxlength=6 required></td>
           </tr>
           <tr>
           <td colspan=2>  <input type="submit" value="Login"/> </td>
           </tr>
           </table>
         
             <p style="color:red">
             <%
             if (request.getAttribute("errorlogin")==null)
            	 out.print("");
             else
            	 out.print(request.getAttribute("errorlogin"));
             %></p>
            
          </form>
          <br>
         
     </div>
     
</body>
</html>
<!-- Html Document Ends-->