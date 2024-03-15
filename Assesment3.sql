CREATE TABLE teachers (
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	homeroom_number INT NOT NULL UNIQUE,
	department VARCHAR(30) NOT NULL ,
	email VARCHAR(50) NOT NULL UNIQUE,
	phone VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	homeroom_number INT NOT NULL UNIQUE,
	phone VARCHAR(30) NOT NULL UNIQUE,
	email VARCHAR(50) NOT NULL UNIQUE,
	graduation_year DATE 
)

SELECT * FROM students ;
INSERT INTO students 
values(1 , 'Rahul' ,'Galande' , 5 , 7775551234 , 'Rahul.galande@gmail.com' , '2023-02-01' );

SELECT * FROM students ;

SELECT * FROM teachers;

INSERT INTO teachers
values(1 , 'Chandrashekhar' , 'Gogte' , 5 , 'Biology' , 'Chandrashekhar.gogte@gmail.com' , '7775554321');

SELECT * FROM students;


---also perform all the operations on this tables






















