package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.StudentDao;


public class Paylogin extends HttpServlet {
	
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
		
		
		
		long rollno=Long.parseLong(request.getParameter("rollno"));
		String course=request.getParameter("course");
		boolean status=StudentDao.verification(rollno, course);
		
			
			 if(status){
					HttpSession session = request.getSession();
					session.setAttribute("accountant","true");
					RequestDispatcher rd;
					request.setAttribute("rollno",rollno);
					request.setAttribute("course",course);
					rd = request.getRequestDispatcher("pay.jsp");
					rd.forward(request,response);
		
		
			
			}
		
		else{
			out.println("<script>\r\n"
					+ "    myalert() \r\n"
					+ "    function myalert() {\r\n"
					+ "        alert(\"Sorry \" +\r\n"
					+ "            \"Wrong Details!\\n\" +\r\n"
					+ "                    \"Try again\");\r\n"
					+ "    }\r\n"
					+ "</script>");
			
						
					
						
			request.getRequestDispatcher("paylogin.html").include(request, response);
		}
		
		
		
		out.println("</body>");
		out.println("</html>");
		
		
	}
	



}
