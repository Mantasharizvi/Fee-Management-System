<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%@page import="dao.DB"%>
<% 



long rollno = Long.parseLong(request.getParameter("rollno"));
String course = request.getParameter("course");
long Acno = Long.parseLong(request.getParameter("acno"));
String Acholdername = request.getParameter("acname");
int amount = Integer.parseInt(request.getParameter("amount"));
String date = request.getParameter("date");

try
{
	
Connection conn = DB.getCon( );
Statement st=conn.createStatement();

String q = "insert into OnlinePay(rollno , course, UPI_or_acno ,Acholder_name ,amount , date) values(?,?,?,?,?,?)";
PreparedStatement ps = conn.prepareStatement(q);
ps.setLong(1,rollno);
ps.setString(2,course);
ps.setLong(3,Acno);
ps.setString(4,Acholdername);
ps.setInt(5,amount);
ps.setString(6,date);


int i =  ps.executeUpdate(); 

if(i>0)
{
	%>
	<!DOCTYPE html>
<html>
<head>



</head>
<body>
</body>

	
    <script>
  myalert()
		 function myalert() {
	 alert("Online Payment Done Successfully for <%= rollno %>")
			   }
  </script>
  
	<% request.getRequestDispatcher("Fee.jsp").include(request, response); 
}
	

else
{
	%>
	
	  <script>
	  malert()
                   function malert() {
               alert("Something went wrong \n Online Payment are not done  for <%= rollno %>")
                         }
	  </script>
<% 
 }

conn.close();
} 
catch (Exception e) {
e.printStackTrace();
}

%>

</html>