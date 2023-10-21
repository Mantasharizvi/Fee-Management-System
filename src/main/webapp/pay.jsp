<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%@page import="dao.DB"%>
<% 
RequestDispatcher rd;
long rollno = (long)request.getAttribute("rollno");

try
{
	
Connection conn = DB.getCon( );
Statement st=conn.createStatement();

String s ="SELECT st.rollno,st.course, cbt.course_semester_fee FROM Studenttble as st INNER JOIN Coursetble as cbt on st.course = cbt.course_name where rollno ="+rollno;
ResultSet rs = st.executeQuery(s);

while(rs.next()){
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<link href="css/pay.css"  rel="stylesheet">
<link href="QR.css"  rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;700&display=swap"
	rel="stylesheet">
	
</head>
<body class="sh">

	<header style="padding: 5%;" class="hed">
	<br>
	<br>
		<div class="p" style="color:White;">Welcome To Online Payment</div>
		
<form action="Payment.jsp">
		<div class="container ">
		
			<div class="Left"> 
			<div>
					<h1 class="h2" style="color:White;"> Payment Details </h1>
					
					</div>
				<div class="pay-form">
					

					
						<div class="uname">
							<label class="L1">Roll No</label>
							<div>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Roll No"
									name="rollno" value="<%=  rs.getLong("rollno") %>" >
							</div>
						</div>
						<br>
						<div>
							<label class="L1">Course </label>
							<div>
								<input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Course" name="course" value="<%=  rs.getString("course") %>">
							</div>
						</div>
						<br>
						<div>
							<label class="L1">UPI ID/ Account no</label>
							<div>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter UPI/ Account no"
									name="acno">
							</div>
							<br>
						</div>
							<div>
							<label class="L1">AccountHolder Name</label>
							<div>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter AccountHolder Name"
									name="acname">
							</div>
						</div>
						<br>
						<div>
							<label class="L1">Amount Rs.</label>
							<div>
								<input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Amount Rs" name="amount" value="<%= rs.getInt("course_semester_fee")%>">
							</div>
						</div>
						<br>
						<div>
							<label class="L1">Payment Date</label>
							<div>
								<input type="date" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Payment Date"
									name="date">
							</div>
						</div>

					<br>
					<span style="color: #213555; font-size: 13px; padding-bottom: 5px;">Warning
						:</span>
					<h5 style="color: red; font-size: 12px; padding-bottom: 12px;">*
						Do Not Refresh  Payment Page Processing Time</h5>
				</div>
			</div>
			
			
			<div class="Right">
		
			<div>
			
			<h4 style="text-align:center; padding-top: 20px;">UPI ID:     mntsh@okmhs</h4>
			<h4 style="text-align:center;">Account No: 789656456789</h4>
			<h4 style="text-align:center;">IFSC Code:  SBI00897654</h4>
			</div>
				<a><img src="images/qu.jpg"></img></a>
				<h1>Please Scan QR Code</h1>
				<div><br><br>
				<input type=submit value="Click To  Pay" class="pay">
				</div>
			</div>
			
		</div>

		
</form>
	</header>
</body>
   <%
}

conn.close();
} 
catch (Exception e) {
e.printStackTrace();
}
//request.setAttribute("rollno",rollno);
%>
</html>