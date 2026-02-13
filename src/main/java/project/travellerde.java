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

@WebServlet ("/travellerde")
public class travellerde extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		Class.forName("com.mysql.jdbc.Driver");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String deletequery="delete from information  where id=?";
		Connection conn;
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			PreparedStatement ps=conn.prepareStatement(deletequery);
			String id=req.getParameter("id");
//			String name=req.getParameter("name");
//			String email=req.getParameter("email");
			ps.setString(1,id);
//			ps.setString(2,name);
//			ps.setString(3,email);
			ps.executeUpdate();
			
			RequestDispatcher rd=req.getRequestDispatcher("traveller.jsp");
			rd.include(req, resp);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}

}
