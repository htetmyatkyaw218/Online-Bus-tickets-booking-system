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

@WebServlet("/routeadd")
public class routeadd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String insertquery="insert into route( source,destination,Date,depart,arrive,price,Duration,img,time) values(?,?,?,?,?,?,?,?,?);";
		
		Connection conn;
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			PreparedStatement ps=conn.prepareStatement(insertquery);

			String source=req.getParameter("source");
			String destination=req.getParameter("destination");
			String Date=req.getParameter("Date");
			String depart=req.getParameter("depart");
			String arrive=req.getParameter("arrive");
			String price=req.getParameter("price");
			String Duration=req.getParameter("Duration");
			String img=req.getParameter("img");
			String time=req.getParameter("time");
			ps.setString(1,source);
			ps.setString(2,destination);
			ps.setString(3,Date);
			ps.setString(4,depart);
			ps.setString(5,arrive);
			ps.setString(6,price);
			ps.setString(7,Duration);
			ps.setString(8,img);
			ps.setString(9,time);
			ps.executeUpdate();
			
			RequestDispatcher rd=req.getRequestDispatcher("routeadd.jsp");
			rd.include(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
