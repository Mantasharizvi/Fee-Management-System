package beans;

public class StudentBean {
private long rollno,contact;

private String firstname,lastname,course,gender;

private String address,email,date_of_joining;

public StudentBean() {
	super();
}


public StudentBean(String firstname,String lastname , String course, String date_of_joining, String gender, long contact, String address,  String email)
	 {
	super();
	this.firstname = firstname;
	this.lastname = lastname;
	this.course = course;
	this.date_of_joining = date_of_joining;
	this.gender = gender;
	this.contact = contact;
	this.address = address;
	this.email = email;
}

public StudentBean(long rollno,String firstname,String lastname , String course, String gender, long contact, String address,  String email, String date_of_joining) {

super();
this.rollno = rollno;
this.firstname = firstname;
this.lastname = lastname;
this.course = course;
this.date_of_joining = date_of_joining;
this.gender = gender;
this.contact = contact;
this.address = address;
this.email = email;
}

public long getRollno() {
	return rollno;
}
public void setRollno(long rollno) {
	this.rollno = rollno;
}
public String getFirstName() {
	return firstname;
}
public void setFirstName(String firstname) {
	this.firstname = firstname;
}
public String getLastName() {
	return lastname;
}
public void setLastName(String lastname) {
	this.lastname = lastname;
}
public String getCourse() {
	return course;
}
public void setCourse(String course) {
	this.course = course;
}

public String getDate_of_joining() {
	return date_of_joining;
}
public void setDate_of_joining(String date_of_joining) {
	this.date_of_joining = date_of_joining;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public long getContact() {
	return contact;
}
public void setContact(long contact) {
	this.contact = contact;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}




}
