package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountantDao;

@WebServlet("/AccountantLogin")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Login</title>");
		
		out.println("</head>");
		out.println("<body>");
		
		
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		boolean status=AccountantDao.validate(email, password);
		
			
			 if(status==true){
					HttpSession session = request.getSession();
					session.setAttribute("accountant","true");
			request.getRequestDispatcher("NDashboard.jsp").include(request, response);
		
	        
			}
			 else if(status==false) {
					boolean result=AdminDao.validate(email, password);
					if(result==true) {
				 HttpSession session = request.getSession();
					session.setAttribute("admin","true");
			request.getRequestDispatcher("NDashboard.jsp").include(request, response);
			 }
					else{
						out.println("<script>\r\n"
								+ "    myalert() \r\n"
								+ "    function myalert() {\r\n"
								+ "        alert(\"Sorry \" +\r\n"
								+ "            \"Wrong Password!\\n\" +\r\n"
								+ "                    \"Try again\");\r\n"
								+ "    }\r\n"
								+ "</script>");
									
						request.getRequestDispatcher("index.html").include(request, response);
					}
			 }
		else{
			out.println("<script>\r\n"
					+ "    myalert() \r\n"
					+ "    function myalert() {\r\n"
					+ "        alert(\"Sorry \" +\r\n"
					+ "            \"Wrong Password!\\n\" +\r\n"
					+ "                    \"Try again\");\r\n"
					+ "    }\r\n"
					+ "</script>");
						
			request.getRequestDispatcher("index.html").include(request, response);
		}
          
		
		out.println("</body>");
		out.println("</html>");
		
		
	}
	



}
