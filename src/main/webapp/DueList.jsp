<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
  
    <%@page import="beans.FeeBean"%>
    <%@page import="dao.FeeDao"%>
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
  
<button class="button" onClick= "opFunction()">Back </button>

<h1 style="color: #00549a; font-size: xxx-large; ">DUES LIST</h1>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Roll_NO" title="Type">
<% List<FeeBean> list=FeeDao.getBalance();%>
<div class="table-wrapper">
<table id="myTable">
  <tr class="header">
    <th style="width:40%; color: white">Roll No</th>
    <th style="width:60%; color: white">Name</th>
    <th style="width:40%; color: white">Course</th>
    <th style="width:40%; color: white">Total_Fee</th>
    <th style="width:40%; color: white">Dues</th>
 
  </tr>
   <% 
         for(FeeBean bean:list){
        
  %>
  <tr>
  <td><%= bean.getRollno() %></td>
    <td><%= bean.getFullname() %>  </td>
    <td><%= bean.getCourse() %></td>
    <td><%= bean.getTotalfee() %></td>
    <td><%= bean.getBalance() %></td>
 
   
    </tr>
    <% } %>
  
 
</table>

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
  window.open("NDashboard.jsp")
}
</script>
</div>
</body>
</html>
    