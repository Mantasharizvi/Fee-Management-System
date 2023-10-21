package beans;

public class FeeBean {
private int receiptno,totalfee,concession,prospectus,registration,enrollment,tution ,hostel,examination,fine,other,paid,balance,adminid;

private long contactno,rollno;
private String fullname,course,date_of_submit,mode_of_payment, feeremark;




public FeeBean() {
	
}

public FeeBean(long rollno, String fullname, String course, String date_of_submit, String mode_of_payment, long contactno, int totalfee, int concession, int prospectus,int registration,int enrollment,int tution ,int hostel,int examination,int fine,int other,int paid,int balance, String feeremark, int adminid) {
	 
	super();
	this.rollno = rollno;
	this.fullname = fullname;
	this.course = course;
	this.date_of_submit = date_of_submit;
	this.mode_of_payment = mode_of_payment;
	this.contactno = contactno;
	this.totalfee = totalfee;
	this.concession = concession;
	this.prospectus = prospectus;
	this.registration = registration;
	this.enrollment = enrollment;
	this.tution = tution;
	this.hostel = hostel;
	this.examination = examination;
	this.fine = fine;
	this.other = other;
	this.paid = paid;
	this.balance = balance;
	this.feeremark = feeremark;
	this.adminid=adminid;
}
public FeeBean(int receiptno,long rollno, String fullname, String course, String date_of_submit, String mode_of_payment, long contactno, int totalfee, int concession, int prospectus,int registration,int enrollment,int tution ,int hostel,int examination,int fine,int other,int paid,int balance, String feeremark, int adminid) {
	 
	super();
	this.receiptno = receiptno;
	this.rollno = rollno;
	this.fullname = fullname;
	this.course = course;
	this.date_of_submit = date_of_submit;
	this.mode_of_payment = mode_of_payment;
	this.contactno = contactno;
	this.totalfee = totalfee;
	this.concession = concession;
	this.prospectus = prospectus;
	this.registration = registration;
	this.enrollment = enrollment;
	this.tution = tution;
	this.hostel = hostel;
	this.examination = examination;
	this.fine = fine;
	this.other = other;
	this.paid = paid;
	this.balance = balance;
	this.feeremark = feeremark;
	this.adminid=adminid;
}

public long getReceiptno() {
	return receiptno;
}
public void setReceiptno(int receiptno) {
	this.receiptno = receiptno;
}
public long getRollno() {
	return rollno;
}
public void setRollno(long rollno) {
	this.rollno = rollno;
}

public String getFullname() {
	return fullname;
}
public void setFullname(String fullname) {
	this.fullname = fullname;
}
public String getCourse() {
	return course;
}
public void setCourse(String course) {
	this.course = course;
}
public String getDate_of_submit() {
	return date_of_submit;
}
public void setDate_of_submit(String date_of_submit) {
	this.date_of_submit = date_of_submit;
}
public String getMode_of_payment() {
	return mode_of_payment;
}
public void setMode_of_payment(String mode_of_payment) {
	this.mode_of_payment = mode_of_payment;
}
public long getContactno() {
	return contactno;
}
public void setContactno(long contactno) {
	this.contactno = contactno;
}

public int getTotalfee() {
	return totalfee;
}
public void setTotalfee(int totalfee) {
	this.totalfee = totalfee;
}
public int getConcession() {
	return concession;
}
public void setConcession(int concession) {
	this.concession = concession;
}


public int getProspectus() {
	return prospectus;
}
public void setProspectus(int prospectus) {
	this.prospectus = prospectus;
}
public int getRegistration() {
	return registration;
}
public void setRegistration(int registration) {
	this.registration = registration;
}
public int getEnrollment() {
	return enrollment;
}
public void setEnrollment(int enrollment) {
	this.enrollment = enrollment;
}
public int getTution() {
	return tution;
}
public void setTution(int tution) {
	this.tution = tution;
}

public int getHostel() {
	return hostel;
}
public void setHostel(int hostel) {
	this.hostel = hostel;
}
public int getExamination() {
	return examination;
}
public void setExamination(int examination) {
	this.examination = examination;
}
public int getFine() {
	return fine;
}
public void setFine(int fine) {
	this.fine = fine;
}
public int getOther() {
	return other;
}
public void setOther(int other) {
	this.other = other;
}
public int getPaid() {
	return paid;
}
public void setPaid(int paid) {
	this.paid = paid;
}
public int getBalance() {
	return balance;
}
public void setBalance(int balance) {
	this.balance = balance;
}

public String getFeeremark() {
	return feeremark;
}
public void setFeereamrk(String feereamrk) {
	this.feeremark = feereamrk;
}
public int getAdminid() {
	return adminid;
}
public void setAdminid(int adminid) {
	this.adminid = adminid;
}



}
