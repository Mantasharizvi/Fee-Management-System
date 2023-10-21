package dao;
import java.sql.*;
public class DB {
public static Connection getCon(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");  
		System.out.println("driver is successfully loaded");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Fees","root","mrizvi786"); 
	}
	catch(Exception ex){
		System.out.println(ex);
		}
	return con;
}
}

