package dao;

import beans.StudentBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class StudentDao {
	

	public static int save(StudentBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("insert into Studenttble(rollno,firstname, lastname ,course, gender, contact, address, email, date_of_joining ) values(?,?,?,?,?,?,?,?,?)");
			ps.setLong(1,bean.getRollno());
			ps.setString(2,bean.getFirstName());
			ps.setString(3,bean.getLastName());
			ps.setString(4,bean.getCourse());
			ps.setString(5,bean.getGender());
			ps.setLong(6,bean.getContact());
			ps.setString(7,bean.getAddress());
			ps.setString(8,bean.getEmail());
			ps.setString(9,bean.getDate_of_joining());

			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}
	public static int update(StudentBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("update Studenttble set rollno=?, firstname=?, lastname=?, course=?, gender=?, contact=?, address=?, email=?, date_of_joining=? where rollno=?");
			
			ps.setLong(1,bean.getRollno());
			ps.setString(2,bean.getFirstName());
			ps.setString(3,bean.getLastName());
			ps.setString(4,bean.getCourse());
			ps.setString(5,bean.getGender());
			ps.setLong(6,bean.getContact());
			ps.setString(7,bean.getAddress());
			ps.setString(8,bean.getEmail());
			ps.setString(9,bean.getDate_of_joining());
			ps.setLong(10,bean.getRollno());
				
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}	
	public static int delete(int rollno){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("delete from Studenttble where rollno=?");
			ps.setLong(1,rollno);
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}
	public static List<StudentBean> getRecordById(long rollno){
		List<StudentBean> list=new ArrayList<StudentBean>();
	
		try{
		
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from Studenttble where rollno=?");
			ps.setLong(1,rollno);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				StudentBean bean=new StudentBean();
				bean.setRollno(rs.getLong(1));
				bean.setFirstName(rs.getString(2));
				bean.setLastName(rs.getString(3));
				bean.setCourse(rs.getString(4));
				bean.setGender(rs.getString(5));
				bean.setContact(rs.getLong(6));
				bean.setAddress(rs.getString(7));
				bean.setEmail(rs.getString(8));
				bean.setDate_of_joining(rs.getString(9));
				
				list.add(bean);
			}
			con.close();
		}
		catch(Exception ex) {
			System.out.println(ex);
			}
		
		return list;
	}
public static List<StudentBean> getAllRecords(){
	List<StudentBean> list=new ArrayList<StudentBean>();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select * from Studenttble");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			StudentBean bean=new StudentBean();
			bean.setRollno(rs.getLong(1));
			bean.setFirstName(rs.getString(2));
			bean.setLastName(rs.getString(3));
			bean.setCourse(rs.getString(4));
			bean.setGender(rs.getString(5));
			bean.setContact(rs.getLong(6));
			bean.setAddress(rs.getString(7));
			bean.setEmail(rs.getString(8));
			bean.setDate_of_joining(rs.getString(9));
			list.add(bean);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);
	}
	
	return list;
}

public static boolean verification(long rollno, String course){
	boolean status=false;
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select * from Studenttble where rollno=? and course=?");
		ps.setLong(1,rollno);
		ps.setString(2,course);
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}

}