<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="dao.StudentDao"%>
       <%@page import="beans.StudentBean"%>
    
<%

	long rollno = Long.parseLong(request.getParameter("rollno"));
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String course = request.getParameter("course");
	String date_of_joining = request.getParameter("date_of_joining");
	String gender = request.getParameter("gender");

	long contacts = Long.parseLong(request.getParameter("contact"));
	//String progLang[] = request.getParameterValues("language");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
Connection con = null;
PreparedStatement ps = null;


try{
	StudentBean bean=new StudentBean(rollno,firstname,lastname,course,gender, contacts, address,email,date_of_joining);
	int status = StudentDao.update(bean);

if(status > 0)
{
%>
<html>

<head>
 <script>
  myalert()
		 function myalert() {
	 alert("Records Updated Successfully")
			   }
  </script>
  </head>
<%
request.getRequestDispatcher("Studenttb.jsp").include(request, response);
}
else
{ %>
<body>

<script>
  myalert()
		 function myalert() {
	 alert("There is a Problem in  Updating Records")
			   }
  </script>
<% 
request.getRequestDispatcher("Studenttb.jsp").include(request, response);
}
}
catch(Exception ex)
{
%>
<h1><%= ex %></h1>
<% 
}
%>
</body>
</html>