<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
  
    <%@page import="beans.AccountantBean"%>
    <%@page import="dao.AccountantDao"%>
    
    
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="css/Dstyle.css">
    
    
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    
    
</head>
<body> 
    <nav>
        <div class="logo-name">
            <div class="logo-image">
                <!--<img src="images/logo.png" alt="">-->
            </div>

            
        </div>
        <h1 class = "h1"> Fee Management System </h1>
        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="#">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Dahsboard</span>
                </a></li>
                <li><a href="Coursetb.jsp">
                    <i class="uil uil-files-landscapes"></i>
                    <span class="link-name">Courses</span>
                </a></li>
                <li><a href="Studenttb.jsp">
                <i class="uil uil-user"> </i> 
                    <span class="link-name">Student</span>
                </a></li>
                 
                <li>
                 <div class="dropdown">
               
<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="uil uil-coins"></i> <span class="link-name">TakeFee</span>
<span class="caret"></span></a>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="Fee.jsp">Offline Payment</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="paylogin.html">Online Payment</a></li>

    </ul>
     
     
  </div>

               </li>
                <li><a href="FeeReport.jsp">
                	    <i class="uil uil-file"></i>
                    <span class="link-name">Fee Report</span>
                </a></li>
                
                   <li><a href="DueList.jsp">
                   <i class="uil uil-coins"></i>
                    <span class="link-name">Fee Dues</span>
                </a></li>
                
                <li><a href="index.html">
                    <i class="uil uil-signout"></i>
                    <span class="link-name">Logout</span>
                </a></li>

                

               
            </ul>
        </div>
    </nav>

    <section class="dashboard">
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>

            <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search here..." title="Type in a name">
            </div>
            
         
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="marquee"> <marquee> WELCOME TO FEE MANAGEMENT SYSTEM </marquee>
                </div>
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">EMPLOYEE DETAILS</span>
                </div>
                </div>
      <% List<AccountantBean> list=AccountantDao.getAllRecords();%>
           
                  <table id="customers">
                    <tr>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Designation</th>
                      <th>Contact Number</th>
                    </tr>
                    
  
        
         <% 
         for(AccountantBean bean:list){
        
  %>
                   
            			<tr>
            			
            			<td><%= bean.getName() %></td>
            			<td><%= bean.getEmail() %></td>
            			<td><%=bean.getDesignation() %></td>
            			<td><%=bean.getContact() %></td>
            			</tr>
            		
       
                   <% } %>
                  </table>   
    </div>

    </section>

    <script>
        function myFunction() {
          var input, filter, table, tr, td, i, txtValue;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          table = document.getElementById("customers");
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
        
        const element1 =  document.getElementById('element1');
        const element2 =  document.getElementById('element2')

        element1.append(element2.children());
     
        </script> 
</body>

</html>
 