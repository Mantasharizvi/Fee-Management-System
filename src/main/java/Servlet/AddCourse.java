package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import beans.CourseBean;
import dao.CourseDao;
import javax.servlet.*;
import javax.servlet.http.*;


public class AddCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddCourse() {
        super();
            }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("Text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Add Courses</title>");
		out.println("</head>");
		out.println("<body>");
		
	
		int course_id = Integer.parseInt(request.getParameter("course_id"));
		String course_name = request.getParameter("course_name");
		String Course_Duration = request.getParameter("course_Duration");
		int course_semester_fee = Integer.parseInt(request.getParameter("course_semester_fee"));
		int course_total_fee=Integer.parseInt(request.getParameter("course_total_fee"));
		
		try {
			
		
			CourseBean bean=new CourseBean(course_id, course_name, Course_Duration,course_semester_fee,course_total_fee);
			int status = CourseDao.save(bean);
		
		
			
			if(status>0) {
				out.println("<h1 style=text-align:center; color: green;> Course Added Successfully </h1>");
				request.getRequestDispatcher("Coursetb.jsp").include(request, response);
				
			} 
			else
				out.println("<script>\r\n"
						+ "    myalert() \r\n"
						+ "    function myalert() {\r\n"
						+ "        alert(\"something went wrong \" +\r\n"
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
		
		
	}

		
}
