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

@WebServlet ("/selectedSeat")
public class SelectedSeat extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		session.setAttribute("seatno",req.getParameter("seat"));		// TODO Auto-generated method stub
				RequestDispatcher rd=req.getRequestDispatcher("step.jsp");
				rd.forward(req, resp);
				RequestDispatcher rd1=req.getRequestDispatcher("tarvellerinfo.jsp");
				rd1.include(req, resp);
	}
}
