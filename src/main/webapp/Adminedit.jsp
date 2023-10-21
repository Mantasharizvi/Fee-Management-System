<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%@page import="dao.DB"%>
<%@page import="java.util.*"%>
    <%@page import="beans.AdminBean"%>
        <%@page import="dao.AdminDao"%>
<%@page import=" javax.servlet.annotation.MultipartConfig"%>
<%@page import= "javax.servlet.annotation.WebServlet"%>
<%
 

try
{
	

	
	List<AdminBean> list=AdminDao.getAllRecords();
    for(AdminBean bean:list){
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> </title>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<link href="css/Admin.css" rel="stylesheet">
</head>
<body>

<div class="testbox">
  <h1> Admin  Update</h1>

  <form action="Updateadmin" method="post" enctype="multipart/form-data">
    
 
  <label id="icon" for="name"><i class="icon-user"></i></label>
  <input type="text" name="name" id="name" placeholder="Name" value="<%=bean.getName() %>" required/>
  
   <label id="icon" for="name"><i class="icon-envelope "></i></label>
  <input type="text" name="email" id="email" placeholder="Email" value="<%=bean.getEmail() %>" required/>
  
  <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="password" name="password" id="password" placeholder="Password" value="<%=bean.getPassword() %>>" required/>
  
  
  <label id="icon" for="name"><i class="icon-phone"></i></label>
  <input type="text" name="contact" id="contact" placeholder="Contact No" value="<%=bean.getContact() %>" required/>
<br>
<br>
  <label  for="name">Upload Signature</label>
  <input type="file" name="image"  id="file" required/>

<div class="button">
   <input type="submit" value="Submit" required/> 
   </div>
<br>

  </form>

</div>
    <%
}


} 
catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>