package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.AccountantBean;


public class AccountantDao {
	
	
	public static int save(AccountantBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("insert into Signup(name,email,designation,password,contact)values(?,?,?,?,?)");
			ps.setString(1,bean.getName());
			ps.setString(2,bean.getEmail());
			ps.setString(3,bean.getDesignation());
			ps.setString(4,bean.getPassword());
			ps.setLong(5,bean.getContact());
		
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}

public static boolean validate(String email,String password){
	boolean status=false;
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select * from Signup where email=? and password=?");
		ps.setString(1,email);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}

	



public static List<AccountantBean> getAllRecords(){
	List<AccountantBean> list=new ArrayList<AccountantBean>();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select name, email,designation, contact from Signup");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			AccountantBean bean=new AccountantBean();
		
			bean.setName(rs.getString(1));
			bean.setEmail(rs.getString(2));

			bean.setDesignation(rs.getString(3));
			bean.setContact(rs.getLong(4));
			list.add(bean);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}


}
