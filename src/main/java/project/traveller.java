package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/destina")
public class traveller extends HttpServlet{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String from=req.getParameter("from");
		String to=req.getParameter("to");
		String date=req.getParameter("date");
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		out.println("<html>\r\n"
				+ "<head>\r\n"
				+ "  <meta charset=\"utf-8\">\r\n"
				+ "  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css\"/>\r\n"
				+ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
				+ "  <link rel=\"stylesheet\" type=\"text/css\" href=\"routeinfo.css\">\r\n"
				+ "  <script src=\"https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.js\"></script>\r\n"
				+ "  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.css\">\r\n"
				+ "  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\">\r\n"
				+ "   <link rel=\"stylesheet\" href=\"route.css\" />\r\n"
				+ "  \r\n"
				+ "  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css\" integrity=\"sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n"
				+ "  <style type=\"text/css\">\r\n"
				+ "  .input-bx input{\r\n"
				+ "  padding-left: 30px;\r\n"
				+ "  }\r\n"
				+ "  .mid_bar .update{\r\n"
				+ "  \r\n"
				+ "}\r\n"
				+ "  </style>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "<header>\r\n"
				+ "  <div class=\"bar\">\r\n"
				+ "\r\n"
				+ "    <div class=\"logo\">\r\n"
				+ "      <h1 class=\"name\" ><img src=\"img/p2.jpg\">Crown BusTicket</h1>\r\n"
				+ "    </div>\r\n"
				+ "    <div class=\"cx\">\r\n"
				+ "    <div class=\"icon\">\r\n"
				+ "      <ul>\r\n"
				+ "        <li><a href=\"ahome.jsp\"> <i class=\"fas fa-sign-out-alt\"></i>Log out</a></li>\r\n"
				+ "        <li><a href=\"ahome.jsp\"><i class=\"fas fa-home\"></i> Home</a></li>\r\n"
				+ "      </ul>\r\n"
				+ "    </div>\r\n"
				+ "  </div>\r\n"
				+ "  </div>\r\n"
				+ "</header>\r\n"
				+ "<div class=\"mid_bar\">\r\n"
				+ "<div class=\"bord\">\r\n"
				+ "    <section class=\"main\">\r\n"
				+ "      <div class=\"main-top\">\r\n"
				+ "        <h1>Travller Information</h1>\r\n"
				+ "      </div>\r\n"
				+ "       </div>\r\n"
				+ "        <form action=\"destina\" method=\"post\">\r\n"
				+ "      <div class=\"input-bx\">\r\n"
				+ "   \r\n"
				+ "            <input type=\"text\"  name=\"from\" list=\"options\">\r\n"
				+ "            <span><i class=\"fa-solid fa-bus\"  ></i> From</span>\r\n"
				+ "            <datalist id=\"options\">\r\n"
				+ "          <option value=\"Yangon-Dagonayar(Yangon)\">\r\n"
				+ "          <option value=\"Pathein\">\r\n"
				+ "            <option value=\"Mandalay\">\r\n"
				+ "            <option value=\"MyaungMya\">\r\n"
				+ "            <option value=\"ChaungThar\">\r\n"
				+ "            <option value=\"Laputta\">\r\n"
				+ "            <option value=\"HinThada\">\r\n"
				+ "            <option value=\"KyonePyaw\">\r\n"
				+ "            <option value=\"NayPyiTaw\">\r\n"
				+ "            </datalist>\r\n"
				+ "      </div>\r\n"
				+ "        <div class=\"input-bx\">\r\n"
				+ "            <input type=\"text\"  name=\"to\" list=\"options\" >\r\n"
				+ "            <span><i class=\"fa-solid fa-location-dot\"></i> To</span>\r\n"
				+ "        </div>\r\n"
				+ "        <div class=\"input-bx\">\r\n"
				+ "             <input type=\"text\" id=\"date-picker\" class=\"form-control\"placeholder=\" DEPARTURE TIME\" name=\"date\" >\r\n"
				+ "            <span><i class=\"fa-solid fa-calendar-days\"></i> </span>\r\n"
				+ "             <script type=\"text/javascript\" src=\"https://translate.google.com/translate_a/element.js\"></script>\r\n"
				+ "        <script>\r\n"
				+ "          flatpickr(\"#date-picker\", {\r\n"
				+ "           minDate: \"today\",\r\n"
				+ "            dateFormat: \"Y-m-d\",\r\n"
				+ "             });\r\n"
				+ "          </script>\r\n"
				+ "        </div>\r\n"
				+ "        <div class=\"input-b\">\r\n"
				+ "           <input type=\"submit\" value=\"Search\" >\r\n"
				+ "        </div>\r\n"
				+ "        </form>\r\n"
				+ "          <div class=\"main-skills\">\r\n"
				+ "        <table >\r\n"
				+ "        	<thead>\r\n"
				+ "        	<tr>\r\n"
				+ "        		<th>Seat No</th>\r\n"
				+ "        		<th>Name</th>\r\n"
				+ "        		<th>Phone</th>\r\n"
				+ "        		<th>Email</th>\r\n"
				+ "        		<th>NRC</th>\r\n"
				+ "        		<th>Gender</th>\r\n"
				+ "        		<th>Date</th>\r\n"
				+ "        		<th>Special Request</th>\r\n"
				+ "        		\r\n"
				+ "        		<th>Delete</th>\r\n"
				+ "\r\n"
				+ "        	</tr>\r\n"
				+ "        	</thead>");
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		String selectquery="";
		
		 selectquery="select * from information where source like'%"+from+"%' AND destination like '%"+to+"%'";
		Connection conn; 
		try{
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(selectquery);
			 boolean dataFound = false;
			while(rs.next()) {
				dataFound = true;
				out.println("<tbody>\r\n"
						+ "        	<tr>");
				out.println("<td>"+rs.getString(2) +"</td>");
				out.println("<td>"+rs.getString(3)+"</td>\r\n"
						+ "        		<td>"+rs.getString(6)+"</td>\r\n"
						+ "        		<td>"+rs.getString(7)+"</td>\r\n"
						+ "        		<td>"+rs.getString(5)+"</td>\r\n"
						+ "        		<td>"+rs.getString(4) +"</td>\r\n"
						+ "        		<td>"+rs.getString(11)+"</td>\r\n"
						+ "        		<td>"+rs.getString(8)+"</td>\r\n");
				out.println("<td><a href=\"travellerde?method=get&id="+rs.getString(1)+"\" class=\"a\">&nbsp;&nbsp;<i class=\"fa-solid fa-user-xmark\"></i>&nbsp;&nbsp;</a></td>");
				out.println("</tr>\r\n"
						+ "        	</tbody>");
			}
			
			RequestDispatcher rd=req.getRequestDispatcher("des.jsp");
			rd.include(req, resp);
				out.println(" </table>\r\n"
						+ "\r\n"
						+ "\r\n"
						+ "      </div>\r\n"
						+ "   </section> <!--  main -->\r\n"
						+ "  </div>\r\n"
						+ "\r\n"
						+ "  </div>\r\n"
						+ "      \r\n"
						+ "</div>\r\n"
						+ "\r\n"
						+ "<footer>\r\n"
						+ "  <div  class=\"but\">\r\n"
						+ "    <p>INFORMATION</p>\r\n"
						+ "    <ul>\r\n"
						+ "      <li><a href=\"\">How to Book Bus Ticket</a></li>\r\n"
						+ "      <li><a href=\"\">How to Open Ecommerce</a></li>\r\n"
						+ "      \r\n"
						+ "    </ul>\r\n"
						+ "  </div>\r\n"
						+ "  <div class=\"but\">\r\n"
						+ "    <p>CONTACT</p>\r\n"
						+ "    <ul>\r\n"
						+ "      <li><a href=\"#\"><i class=\"fa-solid fa-location-dot\"></i> Pathein Highway BusStation,<br>Kimmain Kyun,Pathein ,Myanmar</a></li>\r\n"
						+ "      <li><a href=\"tel:+95651553152\"><i class=\"fa-solid fa-phone\"></i> +959751003020</a></li>\r\n"
						+ "      <li><a href=\"https://www.messenger.com/\"><i class=\"fa-brands fa-facebook-messenger\"></i> Messanger</a></li>\r\n"
						+ "    </ul>\r\n"
						+ "  </div>\r\n"
						+ "  <div class=\"but\">\r\n"
						+ "    <p>LEGAL</p>\r\n"
						+ "    <ul>\r\n"
						+ "      <li><a href=\"term.jsp\">Terms & Conditions</a></li>\r\n"
						+ "      <li><a href=\"privacy.jsp\">Privacy Policy</a></li>\r\n"
						+ "    </ul>\r\n"
						+ "  </div>\r\n"
						+ "</footer>\r\n"
						+ "</body>\r\n"
						+ "</html>");
			}catch(SQLException e) {
				e.printStackTrace();			}
		
	}

}
