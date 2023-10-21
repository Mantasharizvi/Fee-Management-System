package beans;

import java.io.InputStream;
public class AdminBean {
private long contact;
private String name,email,password,imagename;
private InputStream image;
public AdminBean() {
	super();
	
}

public AdminBean(String name,String email, String password,  InputStream image, String imagename) {
	super();

	this.name = name;
	this.email = email;
	this.password = password;
    this.image= image;
    this.imagename = imagename;
    

}

public AdminBean(String name,String email, String password, long contact, InputStream image, String imagename) {
	super();

	this.name = name;
	this.email = email;
	this.password = password;
    this.contact = contact;
    this.image= image;
    this.imagename = imagename;
    

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
public InputStream getImage() {
	return image;
}
public void setImage(InputStream image) {
	this.image = image;
}
public String getImagename() {
	return imagename;
}
public void setImagename(String imagename) {
	this.imagename = imagename;
}

}
