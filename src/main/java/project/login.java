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
@WebServlet("/login")
public class login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String  name=req.getParameter("name");
		String  password=req.getParameter("pass");
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		if(name.equals("Htet Myat kyaw")&&password.equals("htet123")||name.equals("Kaung Htet Swe")&&password.equals("kaung123")||name.equals("Kyaw Thet Hmue")&&password.equals("kyaw123")||name.equals("Yoon Yati")&&password.equals("yoon123")
			||name.equals("Ye Min Aung")&&password.equals("yeye123")||name.equals("Min Thein")&&password.equals("min123")||name.equals("Oak Kar Kyaw")&&password.equals("oak123")	) {
			RequestDispatcher rd=req.getRequestDispatcher("ahome.jsp");
			rd.include(req, resp);
			out.print(name);
			HttpSession session=req.getSession();
			session.setAttribute("user", name);
			session.setAttribute("pass", password);
		}else {
			RequestDispatcher rd=req.getRequestDispatcher("error.jsp");
			rd.include(req, resp);
			
		}
		out.close();
	}

}
