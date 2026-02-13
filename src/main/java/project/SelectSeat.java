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

@WebServlet ("/selectseat")
public class SelectSeat extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session=req.getSession();
	if(req.getParameter("one")!=null)
	session.setAttribute("seatno",1 );
	if(req.getParameter("two")!=null)
		session.setAttribute("seatno",1 );
	}
	

}
