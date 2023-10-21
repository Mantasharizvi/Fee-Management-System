<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

    <%@page import="beans.CourseBean"%>
        <%@page import="dao.CourseDao"%>
    
    
<%
String course_id = request.getParameter("course_id");
String course_name=request.getParameter("course_name");
String course_duration=request.getParameter("course_duration");
String course_semester_fee = request.getParameter("course_semester_fee");
String course_total_fee = request.getParameter("course_total_fee");
if(course_id != null)
{


PreparedStatement ps = null;
int courses_id = Integer.parseInt(course_id);
int coursesemesterfee = Integer.parseInt(course_semester_fee);
int coursetotalFee = Integer.parseInt(course_total_fee);



try{

CourseBean bean= new CourseBean(courses_id, course_name, course_duration, coursesemesterfee, coursetotalFee );
int status = CourseDao.update(bean);
if(status != 0)
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
request.getRequestDispatcher("Coursetb.jsp").include(request, response);
}
else
{%>
<body>
<script>
  myalert()
		 function myalert() {
	 alert("There is a Problem in  Updating Records")
			   }
  </script>
<% 
request.getRequestDispatcher("Coursetb.jsp").include(request, response);
} 
}
catch(Exception ex)
{
%>
<h1><%= ex %></h1>
<% 
}
}
%>
</body>
</html>