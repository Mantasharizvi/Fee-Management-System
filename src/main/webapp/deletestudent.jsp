
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
  <%@page import="dao.StudentDao"%>
       <%@page import="beans.StudentBean"%>
<%
String id = request.getParameter("id");
int rollno =Integer.parseInt(id);
try
{

/** Connection conn = DB.getCon( );
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM Studenttble WHERE rollno="+id); **/
int status = StudentDao.delete(rollno);
if(status>0) {
	%>
	<script>
  myalert()
		 function myalert() {
	 alert("Records Deleted Successfully")
			   }
  </script>
	<%
request.getRequestDispatcher("Studenttb.jsp").include(request, response);

}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>