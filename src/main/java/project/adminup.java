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

@WebServlet ("/admin")
public class adminup extends HttpServlet {

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
			String updatequery="update  admin set name=?,email=?, gender=?,phone=?,password=? where admin_id=?";
			Connection conn;
			try {
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
				PreparedStatement ps=conn.prepareStatement(updatequery);
				
				String name=req.getParameter("name");
				String email=req.getParameter("email");
				String gender=req.getParameter("gender");
				String phone=req.getParameter("phone");
				String password=req.getParameter("password");
				String admin_id=req.getParameter("admin_id");
				
				
				ps.setString(1,name);
				ps.setString(2,email);
				ps.setString(3,gender);
				ps.setString(4,phone);
				ps.setString(5,password);
				ps.setString(6,admin_id);
				
				ps.executeUpdate();
				
				RequestDispatcher rd=req.getRequestDispatcher("admininfo.jsp");
				rd.include(req, resp);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
					
	}

}
