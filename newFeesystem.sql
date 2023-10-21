Create Database Fees;
Use Fees;
CREATE TABLE Signup
(
name varchar (255),  
email varchar (255),
designation varchar(255),
password varchar (255),
contact  bigint  primary key not null
);  
 

CREATE TABLE Adminstb
(
Adminid int primary key not null auto_increment,
name varchar (255),
email varchar (255),
password varchar (255),
contact  bigint ,
image blob not null,
Imagename varchar(50)
);  


CREATE TABLE Coursetble
(
course_id int,  
course_name varchar (100),
course_duration varchar(100),
course_semester_fee int,
course_total_fee int,
primary key(course_name)
); 

 

Create TABLE Studenttble
(
rollno bigint primary key not null,
firstname varchar (255),  
lastname varchar (255), 
course varchar (255),
gender varchar (255),
contact  bigint ,
address varchar (400),  
email varchar (255),
FOREIGN KEY (course) REFERENCES Coursetble(course_name)
); 


CREATE TABLE Feetbdata
(
receiptno int NOT NULL AUTO_INCREMENT,
rollno bigint ,
fullname varchar (255),  
course varchar (255),
date_of_submit varchar(255),
contact  bigint ,
totalfee int,  
concession int, 
prospectus int,
registration int,
enrollment int,
tution int,
hostel int,
examination int,
fine int,
other int,
paid int,
balance int,
 feeremark varchar (400),
 mode_of_payment varchar (255),
 contact  bigint,
 PRIMARY KEY (receiptno),
 FOREIGN KEY (adminid) REFERENCES Adminstb(adminid)
); 
ALTER TABLE Feetbdata AUTO_INCREMENT=101;

Create TABLE OnlinePay
(
rollno bigint primary key not null,
course varchar (50),
UPI_or_acno  bigint ,
Acholder_name varchar (50),
amount int,
date varchar (255)
); 