<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%@page import="dao.DB"%>
<%@page import=" javax.servlet.annotation.MultipartConfig"%>
<%@page import= "javax.servlet.annotation.WebServlet"%>
<%

String rollno = request.getParameter("id");


try
{
	
Connection conn = DB.getCon( );
Statement st=conn.createStatement();

String s ="SELECT st.rollno,st.firstname,st.lastname,st.course,st.contact, cbt.course_semester_fee FROM Studenttble as st INNER JOIN Coursetble as cbt on st.course = cbt.course_name where rollno ="+rollno;
ResultSet rs = st.executeQuery(s);

while(rs.next()){
%>
<html>
  <head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
     <link rel="stylesheet" href="css/Takefee.css">
  </head>
  <body>`
    <button onClick= "myFunction()" class="button" > Back </button>
   <br>
   
   <br>

   <br>

   <br>
  <div class="main">   
    <div class="header">
      <h4>Fee Details</h4> 
      <form  action="TakeFee" method ="post" class="form">
        <div class="input-group"> 
      <label> Roll No: </label>  
<input type="text" name="rollno" value="<%=rs.getLong("rollno")%>" required />   
<br>
<br>
<label> FullName: </label> 
<input type="text" name="fullname" value="<%=rs.getString("firstname")%> &nbsp <%= rs.getString("lastname")%>" required />   
 <br>
 <br>
<label>   
Course :  
</label>   
<select name="course" >  
<option  value="<%=rs.getString("course")%>"><%=rs.getString("course") %></option>  
<option value="BCA">BCA</option>  
<option value="BSC Biotechnology">BSC Biotechnology</option>  
<option value="BSC Food and Nutrition">BSC Food and Nutrition</option>  
<option value="Liberal Arts">Liberal Arts</option>  
<option value="MCA">MCA</option>  
<option value="M.sc Biotechnology">M.sc Biotechnology</option> 
<option value="M.sc Food and Nutrition">M.sc Food and Nutrition</option> 
</select> 
<br>
<br>
<label>   
Contact No :  
</label>
 <input  type="number" id="phone" name="contact" value="<%= rs.getLong("contact")%>" required autofocus > 
<br>
<br>
<label> Date :   </label>
<input type="date"  name="date_of_submit" placeholder="Date of submit *" onfocus="(this.type = 'date')" required autofocus>
<br>
  <br>  
<br>
<label> 
  Total Fee :
</label>  

  <input type="text" name="totalfee"  id="totalfee" value="<%= rs.getInt("course_semester_fee")%>" onkeyup="balance()" required />
   
    <br> 
    <label> Concession on Fee :  </label>
  <input type="text" name="concession" id="concession"  onkeyup="balance()" value='0'  required />
  <br>
<br>
<label> Prospectus Charges: </label>    
<input type="text" name="prospectus" id="prospectus"  onkeyup="sum()" value='0' size="15"required />   
 <br> 
 <br>
<label> Registration Charges: </label>    
<input type="text" name="registration" id="registration"  onkeyup="sum()" value='0' size="15"required />   
 <br>
 <br>
<label> Enrollment Fee: </label>    
<input type="text" name="enrollment" id="enrollment" onkeyup="sum()" value='0' size="15"required />   
 <br>
 <br>
<label> Tution Fee: </label>    
 
<input type="text" name="tution" id="tution" onkeyup="sum()" value='0' size="15"required />   
 <br>
 <br>
<label> Hostel Fee: </label>    
<input type="text" name="hostel" id="hostel" onkeyup="sum()" value='0' size="15"required />   
 <br>
 <label> Examination Fee: </label>    
<input type="text" name="examination" id="examination" onkeyup="sum()" value='0' size="15"required />   
 <br>
 
 <label> Fine: </label>    
<input type="text" name="fine" id="fine" onkeyup="sum()" value='0' size="15"required />   
 <br>
 <label> Others: </label>    
<input type="text" name="other" id="other" onkeyup="sum()" value='0' size="15"required />   
 <br> 
  <label>   
    Paid :  
    </label>
    <input type="text" name="paid" id="paid" onkeyup="balance()" required />
    <br>
    <label>   								
      Balance :  
      </label>
      <input type="text" name="balance" id="balance"  required />
<br>


    
     <br>
    <label>   								
      Admin id :  
      </label>
 <input type="text" name="adminid" value="1001"  required />
      
<br>
<br>

  <label>   
  Mode of Payment :  
  </label>   
    
  <select name="mode_of_payment">  
  <option value="Cash">Cash</option>  
  <option value="Cheque">Cheque</option>  
  <option value="DD"> DD </option> 
  <option value="NEFT"> NEFT </option>
  <option value="RTGH"> RTGH </option> 
  <option value="Online Payment">Online Payment</option>
  </select>  
    <br>
    <br>
 <label>
Fee Remark : 
</label>
<input type="text" name="feeremark"   required />
   <br> 
</div>
<br>

<br>


      <button type="submit"> Submit</button>
      
    </form>

</div>
</div>

 
<script>

function myFunction() {
  window.open("NDashboard.jsp")
}


     	

    $(function(){
  
  $('.form .input-group input').focusout(function(){
    
    var text_val = $(this).val();
    
    if(text_val === "") {
      
      $(this).removeClass('has-value');
      
    } else {
      
      $(this).addClass('has-value');
      
    }
    
  });
  
});
    
    	function sum() {
    	        var txtFirstNumberValue = document.getElementById('prospectus').value;
    	        var txtSecondNumberValue = document.getElementById('registration').value;
    	        var txtThirdNumberValue = document.getElementById('enrollment').value;
    	        var txtFourthNumberValue = document.getElementById('tution').value;
    	        var txtFifthNumberValue = document.getElementById('hostel').value;
    	        var txtSixthNumberValue = document.getElementById('examination').value;
    	        var txtSevenNumberValue = document.getElementById('fine').value;
    	        var txtEightNumberValue = document.getElementById('other').value;
    	  
    	        var result = parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue) + parseInt(txtThirdNumberValue)+ parseInt(txtFourthNumberValue)+ parseInt(txtFifthNumberValue)+ parseInt(txtSixthNumberValue)+ parseInt(txtSevenNumberValue)+  parseInt(txtEightNumberValue) ;
    	        if(!isNaN(result)){
    	            document.getElementById('paid').value = result;
    	            balance();
    	        }
    	}
    	
    	
    	
    	function balance() {
	        var txtFirstNumberValue = document.getElementById('totalfee').value;
	        var txtSecondNumberValue = document.getElementById('concession').value;
	        var txtThirdNumberValue = document.getElementById('paid').value;
	        if(concession==0){
	        var result = parseInt(txtFirstNumberValue) - parseInt(txtThirdNumberValue);
       	 
	        }
	        else{
	        	var result = (parseInt(txtFirstNumberValue) - parseInt(txtSecondNumberValue))- parseInt(txtThirdNumberValue) ;
	        }
	        if(!isNaN(result)){
	            document.getElementById('balance').value = result;
	        }
    	}

       
	        
	
</script>

      <%
}

conn.close();
} 
catch (Exception e) {
e.printStackTrace();
}
%>
  


    </body>
    

   
  
    </html>
    