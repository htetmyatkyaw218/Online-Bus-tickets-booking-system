package project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/seat")
public class seat extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String  name=req.getParameter("seat");
		//String  password=req.getParameter("password");
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		RequestDispatcher rd=req.getRequestDispatcher("des.jsp");
		rd.include(req, resp);
		//if(name.equals("htet")&&password.equals("218")) {
		out.print("Try again"+name);
			HttpSession session=req.getSession();
			session.setAttribute("user", name);
		//}else {
		//	out.print("Try again");
		
		out.close();
	}

}
