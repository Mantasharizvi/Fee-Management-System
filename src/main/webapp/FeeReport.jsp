<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List"%>
  <%@page import="dao.DB"%>
    <%@page import="beans.FeeBean"%>
    <%@page import="dao.FeeDao"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">


  

<link href="css/FeeReport.css" rel="stylesheet"/>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<body>
  
 

 
<h1 style="color: #00549a; font-size: 60px; font-weight: bold; text-align: center; text-decoration: underline;">FEE DETAILS</h1>
<div class="form">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Receipt_no" title="Type">
</div>
<br>
<% List<FeeBean> list=FeeDao.getAllRecords();%>
<table id="myTable">
  <tr class="header">
    <th style="width:40%; color: white">Receipt No</th>
    <th style="width:60%; color: white">Roll No</th>
     <th style="width:60%; color: white">Name</th>
    <th style="width:40%; color: white">Course</th>
    <th style="width:40%; color: white">DOS</th>
    <th style="width:40%; color: white">Mode of payment</th>
    <th style="width:40%; color: white">Contact No</th>
    <th style="width:40%; color: white">Total.Fees</th>
     <th style="width:40%; color: white">Concession</th>
    <th style="width:40%; color: white">Paid</th>
    <th style="width:40%; color: white">Balance</th>
    <th style="width:40%; color: white">Action</th>
  </tr>
  
  <% 
         for(FeeBean bean:list){
        
  %>
  
  <tr>
    <td><%= bean.getReceiptno() %></td>
    <td><%= bean.getRollno() %></td>
    <td><%= bean.getFullname() %></td>
    <td><%= bean.getCourse() %></td>
    <td><%= bean.getDate_of_submit() %></td>
    <td><%= bean.getMode_of_payment() %></td>
    <td><%= bean.getContactno() %></td>
    <td><%= bean.getTotalfee() %></td>
    <td><%= bean.getConcession() %></td>
    <td><%= bean.getPaid() %></td>
    <td><%= bean.getBalance() %></td>
   
    <td>

        <a href="FeeReceipt.jsp?id=<%=bean.getReceiptno()%>"><button style="background-color : #cf0909; color : #fff; border-color: #cf0909; height: 45px; width: 120px;"><i class="fa fa-rupee"></i> FeeReport</button></a>
        
     </td>
    </tr>
    <% } %>
 
</table>
<a href="Fee.jsp" class="previous">&laquo; Previous</a>
<a href="DueList.jsp" class="next">Next &raquo;</a>
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
    