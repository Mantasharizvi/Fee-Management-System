package beans;

public class CourseBean {
private int course_id, course_semesterfee, course_totalfee;
private String course_name, course_duration;

public CourseBean() {
	super();
	
}

public CourseBean(int course_id, String course_name , String course_duration , int course_semesterfee, int course_totalfee) {
	super();
	this.course_id = course_id;
	this.course_name = course_name;
	this.course_duration = course_duration;
	this.course_semesterfee =course_semesterfee;
	this.course_totalfee = course_totalfee;
}
public CourseBean( String course_name , String course_duration , int course_semesterfee, int course_totalfee) {
	super();

	this.course_name = course_name;
	this.course_duration = course_duration;
	this.course_semesterfee =course_semesterfee;
	this.course_totalfee = course_totalfee;

}


public int getId() {
	return course_id;
}
public void setId(int course_id) {
	this.course_id = course_id;
}

public String getName() {
	return course_name;
}
public void setName(String course_name) {
	this.course_name = course_name;
}

public String getDuration() {
	return course_duration;
}
public void setDuration(String course_duration) {
	this.course_duration = course_duration;
}
public int getSemesterfee() {
	return course_semesterfee;
}
public void setSemesterfee(int course_semesterfee) {
	this.course_semesterfee = course_semesterfee;
}

public int getTotalfee() {
	return course_totalfee;
}
public void setTotalfee(int course_totalfee) {
	this.course_totalfee = course_totalfee;
}


}
