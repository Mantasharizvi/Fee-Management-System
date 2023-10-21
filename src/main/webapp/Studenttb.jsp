<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
  
    <%@page import="beans.StudentBean"%>
    <%@page import="dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="css/Coursetable.css" rel="stylesheet"/>

</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<body>
  
<button class="button" onClick= "opFunction()"> Add Students </button>

<h1 style="color: #00549a; font-size: xxx-large; ">STUDENTS</h1>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Roll_NO" title="Type">
<% List<StudentBean> list=StudentDao.getAllRecords();%>
<div class="table-wrapper">
<table id="myTable">
  <tr class="header">
    <th style="width:40%; color: white">Roll No</th>
    <th style="width:60%; color: white">Name</th>
    <th style="width:40%; color: white">Course</th>
    <th style="width:40%; color: white">DOJ</th>
    <th style="width:40%; color: white">Gender</th>
    <th style="width:40%; color: white">Contact No</th>
    <th style="width:40%; color: white">Address</th>
    <th style="width:40%; color: white">Email</th>
    <th style="width:40%; color: white">Action</th>
  </tr>
   <% 
         for(StudentBean bean:list){
        
  %>
  <tr>
  <td><%= bean.getRollno() %></td>
    <td><%= bean.getFirstName() %> &nbsp; <%= bean.getLastName() %> </td>
    <td><%= bean.getCourse() %></td>
    <td><%= bean.getDate_of_joining() %></td>
    <td><%= bean.getGender() %></td>
    <td><%= bean.getContact() %></td>
    <td><%= bean.getAddress() %></td>
    <td><%= bean.getEmail() %></td>
    <td>
         <a href="editstudent.jsp?id=<%=bean.getRollno()%>"><button class="btn edit btn-info" style="background-color : #07ee4d; color : #fff; border-color: #07ee4d; height: 35px; width: 80px;">Edit</button></a>
         <a href="deletestudent.jsp?id=<%=bean.getRollno()%>"><button class="btn cancel btn-link" style="background-color :#DC143C; color : #fff; border-color: #DC143C; height: 35px; width: 80px;"> Delete</button></a>
     </td>
    </tr>
    <% } %>
  
 
</table>
<a href="Coursetb.jsp" class="previous">&laquo; Previous</a>
<a href="Fee.jsp" class="next">Next &raquo;</a>
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
  window.open("Student form.html")
}
</script>
</div>
</body>
</html>
    