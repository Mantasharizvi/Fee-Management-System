package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import dao.AccountantDao;

import javax.servlet.*;
import javax.servlet.http.*;

import beans.AccountantBean;

import java.lang.Long;




public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Signup() {
        super();
            }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("Text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Register Page</title>");
		out.println("</head>");
		out.println("<body>");
	   
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String designation = request.getParameter("designation");
		String password = request.getParameter("password");
		String contact = request.getParameter("contact");
		//String progLang[] = request.getParameterValues("language");
	long contacts = Long.parseLong(contact);
		
		try {
			AccountantBean bean=new AccountantBean(name,email,designation,password,contacts);
			int status = AccountantDao.save(bean);
	
			
			if(status>0)
				response.sendRedirect("NDashboard.jsp");
			else
				out.println("<script>\r\n"
						+ "    myalert() \r\n"
						+ "    function myalert() {\r\n"
						+ "        alert(\"Something went wrong \"); +\r\n"
						+ "    }\r\n"
						+ "</script>");
		
	}
	catch(Exception e) {
		e.printStackTrace();
		out.println("<h1>"+ e +"</h1>");
		out.println("<h1> Exception</h1>");
	}
		
		
				out.println("</body>");
		out.println("</html>");
		out.close();
		
	}

		
}
