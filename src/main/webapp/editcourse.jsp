
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
    <%@page import="beans.CourseBean"%>
        <%@page import="dao.CourseDao"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
try
{


	List<CourseBean> list=CourseDao.getRecordById(id);
    for(CourseBean bean:list){
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/Course.css">
<title>Add Course Details</title>
</head>
<body>

     
    <button onClick ="myFunction()" class="button" > Back </button>
    <h1 style="font-size: 50px;">Update Course Details</h1><br>    
    <div class="forgot">    
    <form action="updateprocess.jsp" method="post">  
     <label><b>Course_Id    
        </b>    
        </label>  
        <br>  
        <input type="text" name="course_id" id="email" placeholder="Enter Course_Id" value="<%= bean.getId() %>">    
        <br><br>      
        <label><b>Course_Name    
        </b>    
        </label>  
        <br>  
        <input type="text" name="course_name" id="email" placeholder="Enter Course_Name" value="<%= bean.getName() %>">    
        <br><br>    
        <label><b>Course_Duration    
        </b>    
        </label>    
  <input type="text" name="course_duration" id="email" placeholder="Enter Course_Duration" value="<%=bean.getDuration() %>">    
        <br><br>  
        <label><b>Course_Semester_Fee    
        </b>    
        </label>  
        <br>  
        <input type="text" name="course_semester_fee" id="email" placeholder="Enter Course_Semester_Fee" value="<%=bean.getSemesterfee() %>">    
        <br><br>     
        <label><b>Course_Total_Fee    
        </b>    
        </label>  
        <br>  
        <input type="text" name="course_total_fee" id="email" placeholder="Enter Course_Total_Fee" value="<%=bean.getTotalfee() %>">    
        <br><br>   
            <input type="Submit" id="btn" value=Submit >
              
        <br><br>    
         
        <br><br>    

    </form>     
            
   
    </div>
  
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
<script>
  function myFunction() {
  window.open("Coursetb.jsp")
}
  
  
</script>
</html>