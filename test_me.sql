-- write the sql statememnt to create a simple countries
--inculiding column country_id ,country_name,region_id
--import andexport
create table countries(
country_id varchar(20),
country_name varchar(45),
region_id decimal(10,0));

select * from countries;

--write a sql statement to create the structure of the table dup_countries
--similar to the countries
create table dup_countries as (
select * from countries);

select * from dup_countries;


-- write the a sql statement to create a table countries ,set the constraint null
create table if not exists  countries(
country_id varchar(20) not null,
country_name varchar(45) not null,
region_id decimal(10,0) not null);
select * from countries;

-- write the sql statement to create a table name job including the columns
--job_id ,job_title ,min salary,max_salary and
--check whether the max_salary amount execeading the upper limit  25000;
create table job(
job_id  varchar(20) not null,
job_title varchar(29) not null,
min_salary int not null,
max_salary int check(max_salary<=25000));

insert into job values(1,'a',123,212453);

insert into job values(2,'b',123,2453);--error

select * from job;

--write the sql statemnet  to created a table named countries including coumns 
--country_id, country_name and region_id make sure that the no countries
--accept betwwen italy ,india and chine will be enter in the table
create table if not exists  countries(
country_id varchar(20) not null ,
country_name varchar(45) check (country_name in('italy','india','china')),
region_id decimal(10,0) not null);
select * from countries;

--write the sql statemnet  to created a table named countries including coumns 
--country_id, country_name and region_id and make sure that no duplicates data against
-- column country_id
create table if not exists  countries(
country_id serial primary key,
country_name varchar(45),
region_id decimal(10,0) not null);

--sira cha
create table if not exists  countries(
country_id serial primary key,
country_name varchar(45),
region_id decimal(10,0) not null
unique(country_id))
;

--  write the sql statement to create a table name job including the columns
--job_id ,job_title ,min salary,max_salary and make sure that default value for job title
--is blank and min_salary is 8000 and max_salary is null will be  entre automatically
-- at the time of insertion if no values 
-- assingend to soecific column.
drop table job;
create table  if not exists job(
job_id  varchar(20) not null,
job_title varchar(29)  default '',
min_salary int  default 8000,
max_salary int default 0);

insert into job values (3,'k');
select * from job;



--Write a sql statement to create a table named countries
--including columns country_id , country_name , and region_id
--and make sure that the country_id column will be a key field 
--which will not contain any duplicate data at the time of insertion

CREATE TABLE IF NOT EXISTS countries(
	country_id SERIAL  NOT NULL UNIQUE PRIMARY KEY,
	county_name varchar(45) NOT NULL,
	region_id decimal(10 , 0) NOT NULL
);

--create countries table as done previously
--column country_id will be unique and store in an auto-incremented value

CREATE TABLE IF NOT EXISTS countries(
	country_id SERIAL  NOT NULL UNIQUE PRIMARY KEY,
	county_name varchar(45) NOT NULL,
	region_id decimal(10 , 0) NOT NULL
);


--create countries table as done previously
--make sure that the combination of columns country_id , and region_id will be unique

CREATE TABLE IF NOT EXISTS countries(
	country_id SERIAL  NOT NULL UNIQUE PRIMARY KEY DEFAULT '',
	county_name varchar(45) DEFAULT NULL,
	region_id decimal(10 , 0) NOT NULL PRIMARY KEY
);


--create a table job_history including columns employe_id , start_date and 
CREATE TABLE job_history(
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY,
START_DATE date NOT NULL,
END_DATE date NOT NULL,
JOB_ID varchar(10) NOT NULL,
DEPARTMENT_ID decimal(4,0) DEFAULT NULL,
FOREIGN KEY(job_id) REFERENCES jobs(job_id)
);



--Write a query to find the addresses (location_id, street_address, city,
--state_province, country_name) of all the departments.
CREATE TABLE location(
	location_id int NOT NULL,
	Street_address varchar(50) NOT NULL,
	postal_code int NOT NULL,
	city varchar(40) NOT NULL,
	State_province varchar(50) NOT NULL ,
	Country_id varchar(50) NOT NULL
);

SELECT * FROM location;

drop table countries;

CREATE TABLE countries(
	Country_id varchar(50) NOT NULL,
	Country_name varchar(50) NOT NULL,
	region_id int NOT NULL
);

SELECT * FROM location;
INSERT INTO location
VALUES(1 , 'rajpat' , 11 , 'NEW-DELHI' , 'DELHI' , '1');

INSERT INTO countries 
VALUES
('1'  , 'INDIA' , 10);

SELECT location_id , street_address , city , state_province , country_name
FROM location 
INNER JOIN countries
ON location.country_id = countries.country_id;


--Write a query to make a join with employees and departments table
--to find the name of the employee, including first_name and last name, department ID
--and name of departments.

--t1 emp_id , first_name , last_name , email , phone_number ,hire_Date , job_id , sal

CREATE TABLE employee(
emp_id SERIAL PRIMARY KEY,
FIRST_NAME varchar(40) NOT NULL,
LAST_NAME varchar(40) NOT NULL,
email varchar(50) NOT NULL,
phone_no varchar(30) NOT NULL,
hire_date Date NOT NULL,
job_id int NOT NULL,
salary Decimal(10,2)
);

SELECT * FROM employee;

--dept table dept_id , dept_name , manager_id ,location_id

CREATE TABLE dept(
dept_id SERIAL PRIMARY KEY,
dept_name varchar(50) NOT NULL,
manager_id int NOT NULL,
location_id int NOT NULL
);

SELECT FIRST_NAME , LAST_NAME , dept_id , dept_name FROM employee
INNER JOIN dept 
on employee.emp_id = dept.manager_id;



---
UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email , created_on , last_login;





drop table jobs1;
--Q1. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary,
--max_salary and check whether the max_salary amount exceeding the upper limit 25000.

CREATE TABLE jobs1(
	job_id SERIAL PRIMARY KEY,
	job_title VARCHAR(40) NOT NULL,
	min_salary decimal(10,0) NOT NULL,
	max_salary decimal(10,0) NOT NULL CHECK (max_salary<=25000),
	email varchar(50) NOT NULL
);

insert into jobs1 values(1 , 'manager' , 5000 , 10000 ,'abc@gmail.com');
select * from jobs1;
--Q2. Write a SQL statement to change the email column of 
--the employees table with 'not available' for all employees.

update jobs1 set email = 'not available';
SELECT * From jobs1;

--Q3. Write a SQL statement to rename the table jobs to jobs_new	
Alter table  jobs1 rename to jobs_new;

--Q.4 Write a SQL statement to add a column dept_id to the table locations
Alter table jobs_new add dept_id int;


--Q.5 Write a SQL statement to insert a record with your own value 
--into the table jobs_new against each column.

select * from jobs_new;

INSERT INTO jobs_new(job_id , job_title , min_salary , max_salary , email , dept_id)
values(2,'dataScientist' , 10000 , 20000 , 'ashishchincholikar07@gmail.com' , 2);



--Q.6 Write a query to display the names (job_id,dept_id) .
SELECT job_id ,dept_id From jobs_new;



--Q.7 Write a query to get the maximum total salaries payable to employees
SELECT max(max_salary) from jobs_new;

--Q.8 Write a query to get the average salary and number of employees are working
SELECT avg(max_salary) , count(job_id) FROM jobs_new;

drop table manager_details;
--Q.9 Create a table manager_details comprises of manager_id,manager_name ,dept_id and 
--Write a query to make a join with two tables jobs_new and manager_details
create table manager_details(
	manager_id serial Primary key,
	manager_name varchar(50) not null,
	dept_id int not null);

	
select * from jobs_new 
inner join manager_details
on jobs_new.dept_id = manager_details.dept_id;

--Q.10 Write a SQL subquery to find the emp_id of all employees from jobs_new 
--table who works in the IT department.

select job_id from jobs_new
where dept_id = 2;











