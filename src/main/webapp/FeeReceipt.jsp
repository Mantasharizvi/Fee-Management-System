<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%@page import="dao.DB"%>
<%@page import=" javax.servlet.annotation.MultipartConfig"%>
<%@page import= "javax.servlet.annotation.WebServlet"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8">
 
    <link rel="stylesheet" href="css/FeeReceipt.css">
  

    <title> Fee Receipt </title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js" ></script>

   </head>
  
<body>
<br>
 <button style="left :1070px" class="button"  onClick="myFunction()" >Back to HomePage</button> 
 <br>
 
  <div  class="page" id="test">
  <div class="page[size=A4]"  >
     
    <div class="top-section">
      
      <h2>  ERA UNIVERSITY </h2>
      <img Class="logo" src="images/Era_University_logo.jpg" alt="Trulli">
      <div class="address">
        <div class="address-content" style="left: 500px">
         <p> SARFARAZGANJ, HARDOI ROAD </p>
           <p>LUCKNOW-226003 (U.P) INDIA</p>
           <p>PHONE NO: 0522-247824</p> 
        

        </div>
      </div>
      </div>
    <table  border= 1    style="  text-align : center; width:100%; border-color: white; border-bottom: blue; border-style: groove;">
        
            <tr> <td colspan="4"> 
<%

String id = request.getParameter("id");
//String image =  (String)request.getAttribute("imgName"); 

try
{
	
Connection conn = DB.getCon( );
Statement st=conn.createStatement();

String s ="SELECT ft.receiptno,ft.rollno,ft.fullname,ft.course,ft.date_of_submit,ft.prospectus,ft.registration,ft.enrollment, ft.tution,ft.hostel,ft.examination,ft.fine ,ft.other ,ft.paid, ft.mode_of_payment, ad.Imagename FROM Adminstb as ad INNER JOIN Feetbdata as ft ON ad.Adminid = ft.Adminid where receiptno ="+id;
ResultSet rs = st.executeQuery(s);

while(rs.next()){
	

	

%>

                
                              <table style="border:0;  width:100%; border-color: blue; border-bottom: none; color: blue;">
                                <tr>
                                    <td style="text-align:left; color: blue;"> Receipt-No:  <%=rs.getInt("receiptno") %></td>
                                    <td style="text-align:right; color: blue;"> Date: <%=rs.getString("date_of_submit") %></td>
                                    
                                    
                                   
                                </tr>
                            </table>
                            <div style="text-align:center; color: blue;">
                                 Roll-No:...........<%=rs.getLong("rollno") %>........................
                                <br>
                                <br>
                                Full-Name.......... <%=rs.getString("fullname") %>...................
                                <br>
                                <br>
                                Course............  .<%=rs.getString("course") %>....................
                                </div>
                                <br>
                 </td> </tr>
                 
            <tr style="color: blue; border-color: blue;">
                <th width="5%">S.NO</th>
                <th width="45%"> Particulars  </th>
                <th width="20%"> <div align=center> </div> <b> Amount </b> 
                    <table style="border: 0;  width:100%; color: blue; ">
                        <tr style="color: blue;">
                        <td> Rs. </td>
                            <td align=center> P. </td>
                        </tr>
                    </table>
                    </th>
                <th width="20%"><div align=center> </div> <b> Amount </b> 
                <table style="border: 0;  width:100%; color: blue;">
                    <tr style="color: blue;">
                        <td> Rs. </td>
                            <td align=center> P. </td>
                        </tr>
                    </table>
                    </th>
            </tr>
        
           
                  <tr style="color: blue; border-color: blue; border-bottom: none;">
                    <td width="20%"> <div align=left> 1 </div>
                        </td>
                    
         <td> Prospectus Charges </td>
          <td> <%=rs.getInt("prospectus") %> </td>
           <td>   </td>
                </tr>
                <tr style="color: blue; border-color: blue; border-bottom: none;">
                    <td width="20%"> <div align=left> 2 </div>
                        </td>
                    
         <td> Registration Charges  </td>
          <td> <%=rs.getInt("registration") %> </td>
           <td>   </td>
                </tr>  
                <tr style="color: blue; border-color: blue; border-bottom: none;">
                    <td width="20%"> <div align=left> 3 </div>
                        </td>
                    
         <td> Enrollment Fee  </td>
          <td> <%=rs.getInt("enrollment") %></td>
           <td>   </td>
                </tr> 
                <tr style="color: blue; border-color: blue; border-bottom: none;">
                    <td width="20%"> <div align=left> 4 </div>
                        </td>
                    
         <td> Tution Fee </td>
          <td> <%=rs.getInt("tution") %></td>
           <td>   </td>
                </tr>    
                <tr style="color: blue; border-color: blue; border-bottom: none;">
                    <td width="20%"> <div align=left> 5 </div>
                        </td>
                    
         <td> Hostel Fee  </td>
          <td> <%=rs.getInt("hostel") %></td>
           <td>   </td>
                </tr> 
        
              
        
        <tr style="color: blue; border-color: blue; border-bottom: none;">
            <td width="20%"> <div align=left> 8 </div>
                </td>
            
        <td> Examination Fee  </td>
        <td> <%=rs.getInt("examination") %> </td>
        <td>   </td>
        </tr>
        
        <tr style="color: blue; border-color: blue;  border-bottom: none;">
            <td width="20%"> <div align=left> 9 </div>
                </td>
            
        <td> Fine  </td>
        <td> <%=rs.getInt("fine") %> </td>
        <td>   </td>
        </tr>
        
        <tr style="color: blue; border-color: blue; border-bottom: none;">
            <td width="20%"> <div align=left> 10 </div>
                </td>
           
        <td> Others  </td>
        <td>  <%=rs.getInt("other") %> </td>
        <td>   </td>
        </tr>
                
            <tr style =" border-color: blue; color: blue;">
                      <td>   </td>
                      <td style="text-align:right; font-weight: bold; color: blue; "> Total</td>
                          <td> <%=rs.getInt("paid") %> </td>
                          <td> </td>
                        
                        
                      </tr>   
                      
                      <tr height="100" style="color: blue; border-color: blue; border-bottom: none; ">
                        <td colspan="4" style=" font-weight: bold; text-align : right ; color: blue;" > <br> <img src="images/<%=rs.getString("Imagename")%>" width="200" height="50"/> <br>
                        <br>
                        Authorised Signature </td>
                        
                          
                        </tr>  
                         <tr height="100" style="color: blue; border-color: blue; border-bottom: none; ">
                        
                        <td colspan="4" style=" font-weight: bold; text-align : left ; color: blue;" >  Mode of Payment:......<%=rs.getString("mode_of_payment")%>..... </td>
                        
                          
                        </tr>       
    </table>
    <br>
          </div>
          </div>
      <%
}

conn.close();
} 
catch (Exception e) {
e.printStackTrace();
}
%>

    </body>

     <script>
   
     function myFunction() {
    	 window.open("NDashboard.jsp");
     }
  
   </script>
    </html>
    