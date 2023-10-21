package beans;

public class AccountantBean {
private long contact;
private String name,email,password,designation;

public AccountantBean() {
	super();
	
}

public AccountantBean(String name, String email,String designation, String password) {
	super();
	this.name = name;
	this.email = email;
	this.designation = designation;
	this.password = password;


}

public AccountantBean( String name, String email, String designation, String password, long contact) {
	super();

	this.name = name;
	this.email = email;
	this.designation = designation;
	this.password = password;
	this.contact = contact;
}



public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation ) {
	this.designation = designation;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public long getContact() {
	return contact;
}
public void setContact(long contact) {
	this.contact = contact;
}

}
