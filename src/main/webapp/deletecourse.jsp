
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="dao.DB"%>
    <%@page import="beans.CourseBean"%>
        <%@page import="dao.CourseDao"%>
<%
String id = request.getParameter("id");
int course_id = Integer.parseInt(id);
try
{

	//CourseBean bean= new CourseBean(courses_id );
	int status = CourseDao.delete(course_id);
if(status>0) {
	%>
	<html>
	<body>
 <script>
  myalert()
		 function myalert() {
	 alert("Course Deleted Successfully")
			   }
  </script>
	<%
request.getRequestDispatcher("Coursetb.jsp").include(request, response);

}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>