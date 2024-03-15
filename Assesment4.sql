CREATE TABLE loans(
	Deal_id int NOT NULL,
	Merchant_id int NOT NULL,
	Funded_Date Date NOT NULL,
	Industry Varchar(20) NOT NULL,
	type Varchar(20) NOT NULL
);

SELECT * FROM loans;

INSERT INTO loans values (1 , 1, '01/01/2016' , 'Retail' , 'New');

INSERT INTO loans values (100 , 80, '04/01/2016' , 'Construction' , 'New');

INSERT INTO loans values (130 , 100, '4/5/2016' , 'Trucking' , 'New');

INSERT INTO loans values (1010 , 1, '23/06/2017' , 'Retail' , 'Renewal');

INSERT INTO loans values (1251 , 1, '10/01/2017' , 'Retail' , 'Renewal');


SELECT * FROM loans;

CREATE TABLE Submissions(
Deal_id int NOT NULL,
Loan_Amount int NOT NULL,
interest_rate int NOT NULL,
rate_type Varchar(20) NOT NULL
);


INSERT INTO Submissions values (1 , 10000 , 8.75 , 'variable')
INSERT INTO Submissions values (100 , 10000 , 11.37 , 'fixed')
INSERT INTO Submissions values (1010 , 15000 , 8.25 , 'fixed')
INSERT INTO Submissions values (1051 , 20000 , 4.75 , 'variable')
INSERT INTO Submissions values (1251 , 40000 , 4.75 , 'variable')
INSERT INTO Submissions values (130 , 10000 , 3 , 'variable')



SELECT * FROM Submissions;

SELECT loan_amount FROM Submissions
INNER JOIN loans 
ON Submissions.Deal_id = loans.Deal_id;































