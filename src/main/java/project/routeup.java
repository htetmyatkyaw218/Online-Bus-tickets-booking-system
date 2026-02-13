package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/route")
public class routeup extends HttpServlet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			}catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			String updatequery="update  route set source=?,destination=?, Date=?,time=?,depart=?,arrive=?,Duration=?,price=? where route_id=?";
			Connection conn;
			try {
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
				PreparedStatement ps=conn.prepareStatement(updatequery);
				
				String source=req.getParameter("source");
				String destination=req.getParameter("destination");
				String Date=req.getParameter("Date");
				String time=req.getParameter("time");
				String depart=req.getParameter("depart");
				String arrive=req.getParameter("arrive");
				String Duration=req.getParameter("Duration");
				String price=req.getParameter("price");
				
				
				String route_id=req.getParameter("route_id");
				
				ps.setString(1,source);
				ps.setString(2,destination);
				ps.setString(3,Date);
				ps.setString(4,time);
				ps.setString(5,depart);
				ps.setString(6,arrive);
				ps.setString(7,Duration);
				ps.setString(8,price);
				ps.setString(9,route_id);
				ps.executeUpdate();
				
				RequestDispatcher rd=req.getRequestDispatcher("routeinfo.jsp");
				rd.include(req, resp);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
					
	}

}
