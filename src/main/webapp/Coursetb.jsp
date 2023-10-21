<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List"%>
  <%@page import="dao.DB"%>
    <%@page import="beans.CourseBean"%>
    <%@page import="dao.CourseDao"%>
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<link href="css/Coursetable.css" rel="stylesheet">

 


</head>
<body>

<button class="button" onClick= "opFunction()">Add Course </button>
 
<h1 style="color: #00549a; font-size: xxx-large; text-decoration: underline;">COURSES</h1>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Course_id" >
<% List<CourseBean> list=CourseDao.getAllRecords();%>
<div class="table-wrapper">
<table id="myTable">
  <tr class="header">
    <th style="width:40%; color: white">Course_Id</th>
    <th style="width:60%; color: white">Course_Name</th>
    <th style="width:40%; color: white">Course_Duration</th>
    <th style="width:40%; color: white">Coursse_Semester_Fee</th>
    <th style="width:40%; color: white">Course_Total_Fee</th>
    <th style="width:40%; color: white">Action</th>
  </tr>
  <% 
         for(CourseBean bean:list){
        
  %>
  <tr>
            			
            			<td><%= bean.getId() %></td>
            			<td><%= bean.getName() %></td>
            			<td><%=bean.getDuration() %></td>
            			<td><%=bean.getSemesterfee() %></td>
            			<td><%=bean.getTotalfee() %></td>
            			
            			 <td>

      <a href="editcourse.jsp?id=<%=bean.getId()%>"><button class="btn edit btn-info" style="background-color : #07ee4d; color : #fff; border-color: #07ee4d; height: 35px; width: 80px;" >Edit</button></a> <br>
      
      <a href="deletecourse.jsp?id=<%=bean.getId()%>"><button class="btn cancel btn-link" style="background-color :#DC143C; color : #fff; border-color: #DC143C; height: 35px; width: 80px;" >  Delete </button></a>
   </td>
            			</tr>
            			<% } %>
  
</table> 
<a href="NDashboard.jsp" class="previous">&laquo; Previous</a>
<a href="Studenttb.jsp" class="next">Next &raquo;</a>
</div>
<script>

function myFunction() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
function opFunction() {
  window.open("Course.jsp");
}




</script>

</body>
</html>
    