<%@page import="dao.DB"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String newpassword=request.getParameter("newpassword");
int check=0;
try{
	Connection con= DB.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from Signup where email='"+email+"' ");
  while(rs.next())
  {
	  check=1;
	  st.executeUpdate("update Signup set password='"+newpassword+"' where email='"+email+"'");
  response.sendRedirect("forget-process.jsp?msg=done");
  }
  if(check==0)
  {
	  response.sendRedirect("forgotPassword.jsp?msg=invalid");
  }
}
catch(Exception e)
{
	System.out.println(e);
}
%>