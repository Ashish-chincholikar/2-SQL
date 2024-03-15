CREATE TABLE Stud_details(
name_of_subcenter varchar(75) NOT NULL,
name_of_consular varchar(75) NOT NULL,
name_of_student varchar(75) NOT NULL,
Date_of_visit Date NOT NULL,
gender varchar(15) NOT NULL,
DOB Date NOT NULL,
Annual_income Decimal(14,2) NOT NULL,
Address Varchar(250) NOT NULL,
Student_Mobile_Number int PRIMARY KEY,
Parent_Mobile_Number int NOT NULL,
Category Varchar(30) NOT NULL,
EWS varchar(10) NOT NULL,
SSC_marks Decimal(5,2) NOT NULL,
HSC_marks Decimal(5,2) NOT NULL,
PCM_total_marks Decimal(8,3) NOT NULL,
PCB_total_marks Decimal(8,3) NOT NULL,
PMB_total_marks Decimal(8,3) NOT NULL,
JEE_marks Decimal(8,3) NOT NULL,
MHTCET_Marks_PCM Decimal(8,3) NOT NULL,
MHTCET_Marks_PCB Decimal(8,3) NOT NULL,
NEET_marks Decimal(8,3) NOT NULL,
Intrested_courses varchar(100) NOT NULL,
Branch varchar(100),
managment_quota varchar(20),
pre_addmission_status varchar(20),
pre_addmission_recipt varchar(20),
intrested_in_sanjivani varchar(20),
home_visit varchar(10),
hostel_facilities varchar(20),
bus_facilities varchar(20),
Remark varchar(100)
);
	
	
	

SELECT * FROM Stud_details;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	