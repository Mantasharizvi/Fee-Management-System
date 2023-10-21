package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import dao.FeeDao;
import beans.FeeBean;
import javax.servlet.*;
import javax.servlet.http.*;



import java.lang.Long;


public class TakeFee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public  TakeFee() {
        super();
            }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("Text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Fee Submission</title>");
		out.println("</head>");
		out.println("<body>");
	    

		long rollno = Long.parseLong(request.getParameter("rollno"));
		String fullname = request.getParameter("fullname");
		String course = request.getParameter("course");
		String date_of_submit = request.getParameter("date_of_submit");
		String mode_of_payment  = request.getParameter("mode_of_payment");
		long contact = Long.parseLong(request.getParameter("contact"));
		int totalfee = Integer.parseInt(request.getParameter("totalfee"));
		int concession = Integer.parseInt(request.getParameter("concession"));
		int prospectus = Integer.parseInt(request.getParameter("prospectus"));
		int registration = Integer.parseInt(request.getParameter("registration"));
		int enrollment = Integer.parseInt(request.getParameter("enrollment"));
		int tution = Integer.parseInt(request.getParameter("tution"));
		int hostel = Integer.parseInt(request.getParameter("hostel"));
		int examination = Integer.parseInt(request.getParameter("examination"));
		int fine = Integer.parseInt(request.getParameter("fine"));
		int other = Integer.parseInt(request.getParameter("other"));
		int paid = Integer.parseInt(request.getParameter("paid"));
		int balance = Integer.parseInt(request.getParameter("balance"));
		String feeremark = request.getParameter("feeremark"); 
		int adminid = Integer.parseInt(request.getParameter("adminid"));
	

		
			
		
		try {
			
			FeeBean bean=new FeeBean(rollno,fullname,course,date_of_submit, mode_of_payment, contact, totalfee,concession,prospectus,registration,enrollment,tution,hostel,examination,fine,other, paid,balance,feeremark,adminid);
			int status = FeeDao.save(bean);
			
				
				if(status>0)
				{
					
					out.println("<center><h1 style = color:blue>Fee Paid Successfully</h1></center>");
					request.getRequestDispatcher("FeeReport.jsp").include(request, response);
		
				}
					
				
				else
				{
					out.println("<script>alert(Something went wrong)</script>");
		
				}
			
	}
	catch(Exception e) {
		e.printStackTrace();
		out.println("<h1>"+ e +"</h1>");

	}
		
		
				out.println("</body>");
		out.println("</html>");
	
		
	}

		
}
	