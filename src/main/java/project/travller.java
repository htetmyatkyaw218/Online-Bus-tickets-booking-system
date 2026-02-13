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
import javax.servlet.http.HttpSession;

@WebServlet("/travel")
public class travller extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session=req.getSession();
		String source=(String)session.getAttribute("source");
		String destination=(String)session.getAttribute("destination");
		String Date=(String)session.getAttribute("Date");
		String seat=req.getParameter("seatno");
		session.setAttribute("seatno",seat);
		String insertquery="insert into information(seat,name,gender,nrc,phone,email,request,source,destination,Date) values(?,?,?,?,?,?,?,?,?,?);";
		
		Connection conn;
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			PreparedStatement ps=conn.prepareStatement(insertquery);
			String name=req.getParameter("name");
			String gender=req.getParameter("gender");
			String nrc=req.getParameter("nrc");
			String phone=req.getParameter("phone");
			String email=req.getParameter("email");
			String request=req.getParameter("request");
			//String source1=req.getParameter("source");
			//String destination1=req.getParameter("destination");
			//String Date1=req.getParameter("Date");
			ps.setString(1,seat);
			ps.setString(2,name);
			ps.setString(3,gender);
			ps.setString(4,nrc);
			ps.setString(5,phone);
			ps.setString(6,email);
			ps.setString(7,request);
			ps.setString(8,source);
			ps.setString(9,destination);
			ps.setString(10,Date);
			ps.executeUpdate();
			
			RequestDispatcher rd=req.getRequestDispatcher("payment.jsp");
			rd.include(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
