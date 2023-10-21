package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import beans.StudentBean;
import dao.StudentDao;

import javax.servlet.*;
import javax.servlet.http.*;


public class Studentform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Studentform() {
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
	   
		long rollno = Long.parseLong(request.getParameter("rollno"));
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String course = request.getParameter("course");
		
		String gender = request.getParameter("gender");
		long contacts = Long.parseLong(request.getParameter("contact"));
		//String progLang[] = request.getParameterValues("language");
		String address = request.getParameter("address");
    	String email = request.getParameter("email");
    	String date_of_joining = request.getParameter("date_of_joining");
		try {
			StudentBean bean=new StudentBean(rollno,firstname,lastname,course,gender, contacts, address,email,date_of_joining);
			int status = StudentDao.save(bean);
		
			
			if(status>0) {
				out.println("<script>\r\n"
						+ "    myalert() \r\n"
						+ "    function myalert() {\r\n"
						+ "        alert(\"Student Added Successfully \" +\r\n"
						+ "                    \"\");\r\n"
						+ "    }\r\n"
						+ "</script>");
				request.getRequestDispatcher("Studenttb.jsp").include(request, response);
			}
			else
				out.println("<h1>Something went wrong</h1>");
		
	}
	catch(Exception e) {
		e.printStackTrace();
		out.println("<h1>"+ e +"</h1>");
		out.println("<h1> Exception</h1>");
	}
		
		
				out.println("</body>");
		out.println("</html>");
		
		
	}

		
}
