package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import beans.AdminBean;


	
public class AdminDao {

	public static int save(AdminBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("insert into Adminstb (name,email,password,contact,image,Imagename)values(?,?,?,?,?,?)");
			ps.setString(1,bean.getName());
			ps.setString(2,bean.getEmail());
			ps.setString(3,bean.getPassword());
			ps.setLong(4,bean.getContact());
			ps.setBlob(5,bean.getImage());
			ps.setString(6,bean.getImagename());
			
			

			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}
	public static boolean validate(String email,String password){
		boolean result=false;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from Adminstb where email=? and password=?");
			ps.setString(1,email);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			result=rs.next();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return result;
	}
	public static int update(AdminBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("update Adminstb set name=?,email=?,password=?, contact=?, image=?,Imagename=? where contact=?");
			ps.setString(1,bean.getName());
			ps.setString(2,bean.getEmail());
			ps.setString(3,bean.getPassword());
			ps.setLong(4,bean.getContact());
			ps.setBlob(5,bean.getImage());
			ps.setString(6,bean.getImagename());
			ps.setLong(7,bean.getContact());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){
			System.out.println(ex);
			}
		return status;
	}	
	public static List<AdminBean> getAllRecords(){
		List<AdminBean> list=new ArrayList<AdminBean>();
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select name, email, password, contact from Adminstb");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				AdminBean bean=new AdminBean();
			
				bean.setName(rs.getString(1));
				bean.setEmail(rs.getString(2));
				bean.setPassword(rs.getString(3));
				bean.setContact(rs.getLong(4));
			//	bean.setImage(rs.getBlob(5));
				
				list.add(bean);
			}
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		
		return list;
	
	
	

	}

}
