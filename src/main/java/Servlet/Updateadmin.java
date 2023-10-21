package Servlet;
import java.io.InputStream;
import java.io.IOException;
import java.io.PrintWriter;
import dao.AdminDao;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.lang.Long;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.AdminBean;


@WebServlet("/updateServlet")
@MultipartConfig(maxFileSize = 16177215)
public class Updateadmin extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
   
    public Updateadmin() {
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
	   
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String contact = request.getParameter("contact");  

		long contacts = Long.parseLong(contact);
	       
	        Part filePart = request.getPart("image");
	       
	   
	        InputStream inputStream = filePart.getInputStream();
	        String imgFileName = filePart.getSubmittedFileName(); 

	        AdminBean bean=new AdminBean(name, email,password,contacts,inputStream, imgFileName);
	    	int status=AdminDao.update(bean);
		
	
			
			if(status>0) {
				out.println("<h1> Records Updated Successfully</h1>");
			
				request.getRequestDispatcher("Adminsignup.html").include(request, response);
			}
			else {
				out.println("<h1> Records are not Updated </h1>");
			
				request.getRequestDispatcher("Adminsignup.html").include(request, response);
			}
					
		
	}
	catch(Exception e) {
		e.printStackTrace();
		out.println("<h1>"+ e +"</h1>");

	}
		
		
		out.println("</body>");
		out.println("</html>");
		out.close();
		
	}

}
