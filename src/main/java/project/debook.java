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

@WebServlet ("/debook")
public class debook extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		Class.forName("com.mysql.jdbc.Driver");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		String deletequery="delete from information where  source=? and destination=? and Date=?";
		Connection conn;
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			PreparedStatement ps=conn.prepareStatement(deletequery);
			String from=req.getParameter("from");
			String to=req.getParameter("to");
			String Date=req.getParameter("date");
			ps.setString(1,from);
			ps.setString(2,to);
			ps.setString(3,Date);
			ps.executeUpdate();
			
			RequestDispatcher rd=req.getRequestDispatcher("booking.jsp");
			rd.include(req, resp);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}

}
