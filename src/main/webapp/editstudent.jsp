<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@page import="java.sql.*,java.util.*"%>
<%@page import="dao.DB"%>
  <%@page import="dao.StudentDao"%>
       <%@page import="beans.StudentBean"%>

<!DOCTYPE html>  
<html lang="en">


<head>  


   <meta name="viewport" content="width=device-width, initial-scale=1" />
   <link
     rel="stylesheet"
     href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css"
   />
   <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
   <link href="css/Student.css" rel="stylesheet"/>

</head>  
<body> 
 <%
String id = request.getParameter("id");
 long rollno = Long.parseLong(id);
try
{
	 List<StudentBean> list=StudentDao.getRecordById(rollno);
	 for(StudentBean bean:list){

%> 
<form action="studentupdate.jsp" method="post">  
  <div class="container"> 
    
        <button onClick= "myFunction()" class="button" > Back </button>
          
    <h1> Update Student Details </h1>  
  <hr>  
  <label>rollno </label>   
<input type="number" name="rollno" placeholder= "Enter Roll No" size="15" value="<%=bean.getRollno() %>" required />   
<br>
<label> Firstname: </label>   
<input type="text" name="firstname" placeholder="Enter Firstname" size="15" value="<%=bean.getFirstName() %>" required />   
<label> Lastname: </label>    
<input type="text" name="lastname" placeholder="Enter Lastname" size="15" value="<%=bean.getLastName()%>"required />   
<div>  
<label>   
course
</label>   
  
<select name="course" >  
<option value="<%=bean.getCourse() %>"><%=bean.getCourse()  %></option>  
<option value="BCA">BCA</option>  
<option value="BSC Biotechnology">BSC Biotechnology</option>  
<option value="BSC Food and Nutrition">BSC Food and Nutrition</option>  
<option value="Liberal-arts">Liberal Arts</option>  
<option value="MCA">MCA</option>  
<option value="M.sc Biotechnology">M.sc Biotechnology</option> 
<option value="M.sc Food and Nutrition">M.sc Food and Nutrition</option> 
</select>  
</div> 
<label>date_of_joining</label>
<input type="date"  name="date_of_joining" placeholder="Date of Joining *" value="<%= bean.getDate_of_joining() %>" onfocus="(this.type = 'date')" required autofocus>

<div>  
<label>   
gender 
</label><br>  
<input type="radio" value="Male" name="gender"> Male   
<input type="radio" value="Female" name="gender"> Female   
<input type="radio" value="Other" name="gender"> Other  
  
</div>   
<label>Contact No :</label >
<input  type="number"  name="contact" value="<%= bean.getContact() %>"  required autofocus > 
<br>

<label>
address
</label>
<textarea cols="60" rows="4" name="address" required>  <%=bean.getAddress()%>
</textarea>  
 <label for="email"><b>Email</b></label>  
 <input type="email" placeholder="Enter Email" name="email" value="<%=bean.getEmail()%>" required>  
  
     
    <button type="submit" class="registerbtn">Submit</button>  
    </div>  
</form> 

<script>
  function myFunction() {
  window.open("Studenttb.jsp")
}

  
</script> 
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body> 

</html>  
