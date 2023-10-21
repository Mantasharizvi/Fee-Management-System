<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List"%>
  <%@page import="dao.DB"%>
    <%@page import="beans.StudentBean"%>
    <%@page import="dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/Fee.css" rel="stylesheet">

  

</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<body>
  
 

 
<h1 style="color: #00549a; font-size: 50px; font-weight: bold; text-align: center; text-decoration: underline;"> REGISTERED STUDENT FOR FEE PAYMENT</h1>
<div class="form">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Roll_no" title="Type">
</div>
<br>
<% List<StudentBean> list=StudentDao.getAllRecords();%>
<table id="myTable">
  <tr class="header">
 <th style="width:40%; color: white">Roll No</th>
    <th style="width:60%; color: white">Name</th>
    <th style="width:40%; color: white">Course</th>
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
    <td><%= bean.getContact() %></td>
    <td><%= bean.getAddress() %></td>
    <td><%= bean.getEmail() %></td>
   
    <td>

        <a href="Takefee.jsp?id=<%=bean.getRollno()%>"><button style="background-color : #07ee4d; color: #fff;  border-color: #07ee4d; height: 45px; width: 120px;"><i class="fa fa-rupee"></i>TakeFee</button></a>
        
     </td>
    </tr>
    <% } %>
 
</table>
<a href="Studenttb.jsp" class="previous">&laquo; Previous</a>
<a href="FeeReport.jsp" class="next">Next &raquo;</a>
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
  window.open("Takefee.html")
}

</script>
</body>
</html>
    