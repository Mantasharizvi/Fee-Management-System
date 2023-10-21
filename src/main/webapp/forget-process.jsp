<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/forgot.css">
<title>ForgotPassword</title>
</head>
<body>

     
      
    <h1>Forgot Password</h1><br>    
    <div class="forgot">    
    <form  method="post" action="ForgotPasswordAct.jsp">    
        <label><b>Email    
        </b>    
        </label>  
        <br>  
        <input type="email" name="email" id="email" placeholder="Enter Email">    
        <br><br>    
        <label><b>New Password     
        </b>    
        </label>    
        <input type="Password" name="newpassword" id="Pass" placeholder="Enter New Password">    
        <br><br>    
        <input type="Submit" name="Change Password" id="btn" value="Reset Password">       
        <br><br>    
         
        <br><br>    
      <h2>  <a href="index.html">Login</a> </h2>   
    </form>     
        
   <%
   String msg=request.getParameter("msg");
   if("done".equals(msg))
   {
   %>
 <h2>Password Changed Successfully!</h2>
<%}%>
<% 
if("invalid".equals(msg))
{
	%>

<h2>Some thing Went Wrong! Try Again !</h2>
<%}%>
    </div>
  
</body>
</html>