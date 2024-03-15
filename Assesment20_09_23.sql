
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











