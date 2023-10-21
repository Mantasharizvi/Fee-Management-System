<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/Course.css">
<title>Add Course</title>
</head>
<body>

     
      <form action="Coursetb.jsp">
            <button class="button"> Back </button>
            </form> 
           
    <h1 style="font-size: 40px; ">Add Course Details </h1><br>
    
    <div class="forgot">    
    <form  method="post" action="AddCourse">    
       <label><b>Course_Id   
        </b>    
        </label>  
        <br>  
        <input type="text" name="course_id" id="email" placeholder="Enter Course_Id">    
        <br><br>    
        <label><b>Course_Name    
        </b>    
        </label>  
        <br>  
        <input type="text" name="course_name" id="email" placeholder="Enter Course_Name">    
        <br><br>    
        <label><b>Course_Duration    
        </b>    
        </label>    
  <input type="text" name="course_Duration" id="email" placeholder="Enter Course_Duration">    
        <br><br>  
        <label><b>Course_Semester_Fee   
        </b>    
        </label>  
        <br>  
        <input type="text" name="course_semester_fee" id="email" placeholder="Enter Course_Semester_Fee">    
        <br><br>   
         <label><b>Course_Total_Fee   
        </b>    
        </label>  
        <br>  
        <input type="text" name="course_total_fee" id="email" placeholder="Enter Course_Total_Fee">    
        <br><br>   
        <input type="Submit"  id="btn" value="Submit">       
        <br><br>    
         
        <br><br>    
     
    </form>     
        
   
    </div>
  
</body>
</html>