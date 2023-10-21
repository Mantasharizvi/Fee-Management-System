package dao;

import beans.FeeBean;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class FeeDao {
	public static int save(FeeBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("insert into Feetbdata(rollno ,fullname ,course, date_of_submit ,mode_of_payment ,contactno ,totalfee , concession , prospectus,registration,enrollment,tution,hostel,examination , fine,other,paid , balance,feeremark,Adminid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setLong(1,bean.getRollno());
			ps.setString(2,bean.getFullname());
	        ps.setString(3,bean.getCourse());
			ps.setString(4,bean.getDate_of_submit());
			ps.setString(5,bean.getMode_of_payment());
			ps.setLong(6,bean.getContactno());
			ps.setInt(7,bean.getTotalfee());
			ps.setInt(8,bean.getConcession());
			ps.setInt(9,bean.getProspectus());
			ps.setInt(10,bean.getRegistration());
			ps.setInt(11,bean.getEnrollment());
			ps.setInt(12,bean.getTution());
			ps.setInt(13,bean.getHostel());
			ps.setInt(14,bean.getExamination());
			ps.setInt(15,bean.getFine());
			ps.setInt(16,bean.getOther());
			ps.setInt(17,bean.getPaid());
			ps.setInt(18,bean.getBalance());
			ps.setString(19,bean.getFeeremark());
			ps.setInt(20,bean.getAdminid());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}
	
public static List<FeeBean> getAllRecords(){
	List<FeeBean> list=new ArrayList<FeeBean>();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select receiptno, rollno, fullname, course, date_of_submit, mode_of_payment, contactno, totalfee, concession , paid, balance from Feetbdata");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			FeeBean bean=new FeeBean();
			bean.setReceiptno(rs.getInt(1));
			bean.setRollno(rs.getLong(2));
			bean.setFullname(rs.getString(3));
			bean.setCourse(rs.getString(4));
			bean.setDate_of_submit(rs.getString(5));
			bean.setMode_of_payment(rs.getString(6));
			bean.setContactno(rs.getLong(7));
			bean.setTotalfee(rs.getInt(8));
			bean.setConcession(rs.getInt(9));
			bean.setPaid(rs.getInt(10));
			bean.setBalance(rs.getInt(11));
			
			list.add(bean);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}


public static List<FeeBean> getBalance(){
	List<FeeBean> list=new ArrayList<FeeBean>();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select rollno, fullname, course, totalfee, balance from Feetbdata where balance>0");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			FeeBean bean=new FeeBean();
		
			
			bean.setRollno(rs.getLong(1));
			bean.setFullname(rs.getString(2));
			bean.setCourse(rs.getString(3));
			bean.setTotalfee(rs.getInt(4));
			bean.setBalance(rs.getInt(5));
			list.add(bean);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}

}