package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import beans.CourseBean;

public class CourseDao {
	public static int save(CourseBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("insert into Coursetble(course_id,course_name,course_duration,course_semester_fee,course_total_fee) values(?,?,?,?,?)");
			ps.setInt(1,bean.getId());
			ps.setString(2,bean.getName());
			ps.setString(3,bean.getDuration());
			ps.setInt(4,bean.getSemesterfee());
			ps.setInt(5,bean.getTotalfee());

			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}
	public static int update(CourseBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("update Coursetble set course_name=?, course_duration=?, course_semester_fee=?, course_total_fee=? where course_id=?");
			
			ps.setString(1,bean.getName());
			ps.setString(2,bean.getDuration());
			ps.setInt(3,bean.getSemesterfee());
			ps.setInt(4,bean.getTotalfee());

			ps.setInt(5,bean.getId());
				
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}	
	public static int delete(int course_id){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("delete from Coursetble where course_id=?");
			ps.setLong(1,course_id);
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}
public static List<CourseBean> getAllRecords(){
	List<CourseBean> list=new ArrayList<CourseBean>();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select * from Coursetble");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			CourseBean bean=new CourseBean();
		
			bean.setId(rs.getInt(1));
			bean.setName(rs.getString(2));
			bean.setDuration(rs.getString(3));
			bean.setSemesterfee(rs.getInt(4));
			bean.setTotalfee(rs.getInt(5));
			
			list.add(bean);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}

public static List<CourseBean> getRecordById(int course_id){
	List<CourseBean> list=new ArrayList<CourseBean>();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select * from Coursetble where course_id=?");
		ps.setInt(1,course_id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			CourseBean bean=new CourseBean();
			bean.setId(rs.getInt(1));
			bean.setName(rs.getString(2));
			bean.setDuration(rs.getString(3));
			bean.setSemesterfee(rs.getInt(4));
			bean.setTotalfee(rs.getInt(5));
			
			list.add(bean);
		}
		con.close();
	}
	catch(Exception ex) {
		System.out.println(ex);
		}
	
	return list;
}
}
