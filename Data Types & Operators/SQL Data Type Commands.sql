# MySQL Datatype Commands

# MySQL Character (String) Related SQL Commands

# Character functions are used to manipulate and analyze text data stored in CHAR, VARCHAR, or TEXT columns.

Function	  Description							Example	Output
LENGTH()	  Returns number of bytes in a string	SELECT LENGTH('Python');						6
CHAR_LENGTH() Returns number of characters			SELECT CHAR_LENGTH('Python');					6
UPPER()		  Converts text to uppercase			SELECT UPPER('python');							PYTHON
LOWER()		  Converts text to lowercase			SELECT LOWER('SQL');							sql
CONCAT()	  Joins strings							SELECT CONCAT('Data',' ','Science');			Data Science
LEFT()		  Returns leftmost characters			SELECT LEFT('DATABASE',4);						DATA
RIGHT()		  Returns rightmost characters			SELECT RIGHT('DATABASE',4);						BASE
SUBSTRING()	  Extracts part of a string				SELECT SUBSTRING('DATABASE',2,4);				ATAB
REPLACE()	  Replaces text							SELECT REPLACE('I love Python','Python','SQL');	I love SQL
TRIM()		  Removes leading/trailing spaces		SELECT TRIM(' Hello ');							Hello
LTRIM()		  Removes leading spaces				SELECT LTRIM(' Hello');							Hello
RTRIM()		  Removes trailing spaces				SELECT RTRIM('Hello ');							Hello
REVERSE()	  Reverses a string						SELECT REVERSE('MYSQL');						LQSYM
INSTR()		  Finds position of substring			SELECT INSTR('DATABASE','BASE');				5

Sample Table for Practice

CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30)
);

INSERT INTO Students VALUES
(101, 'Arun Kumar', 'Computer Science', 'Chennai'),
(102, 'Priya Sharma', 'Data Science', 'Coimbatore'),
(103, 'Rahul Singh', 'Information Technology', 'Madurai'),
(104, 'Ananya Devi', 'Computer Science', 'Salem'),
(105, 'Vignesh', 'Artificial Intelligence', 'Erode');


# Q1. Display all student names in uppercase.

SELECT UPPER(StudentName)
FROM Students;

# Q2. Display all student names in lowercase.

SELECT LOWER(StudentName)
FROM Students;

# Q3. Find the length of each students name.

SELECT StudentName,
       LENGTH(StudentName)
FROM Students;

# Q4. Display the first 3 characters of each students name.

SELECT StudentName,
       LEFT(StudentName,3)
FROM Students;

# Q5. Display the last 4 characters of each students name.

SELECT StudentName,
       RIGHT(StudentName,4)
FROM Students;
Level 2 – Intermediate

# Q6. Display the first name only from StudentName.

SELECT StudentName,
       SUBSTRING_INDEX(StudentName,' ',1) AS FirstName
FROM Students;

# Q7. Concatenate Student Name and Department.

SELECT CONCAT(StudentName,' - ',Department)
FROM Students;

Output Example

CONCAT(StudentName,' - ',Department)
Arun Kumar - Computer Science
Priya Sharma - Data Science

# Q8. Replace the word "Science" with "Engg" in Department.

SELECT Department,
       REPLACE(Department,'Science','Engg')
FROM Students;

# Q9. Reverse each students name.

SELECT StudentName,
       REVERSE(StudentName)
FROM Students;

# Q10. Find the position of the word "Kumar" in student names.

SELECT StudentName,
       INSTR(StudentName,'Kumar')
FROM Students;


# Q11 Display student names whose names start with 'A'.

SELECT
    StudentName
FROM StudentCareer
WHERE StudentName LIKE 'A%';


# Q12 Display student names whose names end with 'a'.

SELECT
    StudentName
FROM StudentCareer
WHERE StudentName LIKE '%a';

# Q13 Display students whose department contains the word 'Science'.

SELECT *
FROM StudentCareer
WHERE Department LIKE '%Science%';

# Q14 Display the names having more than 10 characters.

SELECT
    StudentName,
    LENGTH(StudentName) AS Name_Length
FROM StudentCareer
WHERE LENGTH(StudentName) > 10;

# Q15. Display student names after removing spaces from the beginning and end.
SELECT
    StudentName,
    TRIM(StudentName) AS Trimmed_Name
FROM StudentCareer;

#Q16 Display the first 5 characters of the department name.

SELECT
    Department,
    LEFT(Department, 5) AS First_5_Chars
FROM StudentCareer;

# Q17. Display student names and cities together in the format:

	SELECT
		CONCAT(StudentName, ' from ', City) AS Student_Details
	FROM StudentCareer;

	Output
	Arun Kumar from Chennai
	Priya Sharma from Coimbatore

# Q18 Display students whose second character is 'r'.

SELECT
    StudentName
FROM StudentCareer
WHERE StudentName LIKE '_r%';


# Q19. Display students whose names contain the substring 'an'.

SELECT
    StudentName
FROM StudentCareer
WHERE StudentName LIKE '%an%';

# Q20. Display student names in reverse order alphabetically.

SELECT
    StudentName
FROM StudentCareer
ORDER BY StudentName DESC;

/*
# MySQL Integer (INT) Related SQL Commands

# The INT data type stores whole numbers (positive, negative, or zero).
# It is commonly used for IDs, age, marks, salary, quantity, rank, etc.

# Sample Table for Practice
*/

CREATE TABLE Employees (
    EmpID INT,
    EmpName VARCHAR(50),
    Age INT,
    Salary INT,
    Experience INT
);

INSERT INTO Employees VALUES
(101, 'Arun', 25, 35000, 2),
(102, 'Priya', 28, 50000, 5),
(103, 'Rahul', 22, 28000, 1),
(104, 'Ananya', 32, 65000, 8),
(105, 'Vignesh', 30, 45000, 6);

/*
Integer Related SQL Functions

Function / Operator	Description	Example	Output
*/
ABS()		Absolute value								SELECT ABS(-25);				25
MOD()		Remainder after division					SELECT MOD(17,5);				2
ROUND()		Rounds a number								SELECT ROUND(12.67);			13
CEIL()		Smallest integer greater than or equal		SELECT CEIL(12.1);				13
FLOOR()		Largest integer less than or equal			SELECT FLOOR(12.9);				12
POWER()		Raises to a power							SELECT POWER(2,3);				8
SQRT()		Square root									SELECT SQRT(64);				8
RAND()		Generates random number						SELECT RAND();					Random
GREATEST()	Largest value								SELECT GREATEST(10,20,15);		20
LEAST()		Smallest value								SELECT LEAST(10,20,15);			10
Aggregate 	Functions on INT Columns
Function	Description	Example
SUM()		Total of values								SELECT SUM(Salary) FROM Employees;
AVG()		Average value								SELECT AVG(Salary) FROM Employees;
MIN()		Minimum value								SELECT MIN(Age) FROM Employees;
MAX()		Maximum value								SELECT MAX(Salary) FROM Employees;
COUNT()		Count rows									SELECT COUNT(*) FROM Employees;

# 1. Find Total Salary

SELECT SUM(Salary) AS TotalSalary
FROM Employees;

# 2. Find Average Salary
SELECT AVG(Salary) AS AverageSalary
FROM Employees;

# 3. Find Maximum Salary
SELECT MAX(Salary) AS HighestSalary
FROM Employees;

# 4. Find Minimum Age
SELECT MIN(Age) AS YoungestEmployee
FROM Employees;

# 5. Find Absolute Value
SELECT ABS(-100);

Output

100

# 6. Find Remainder
SELECT MOD(25,4);

Output
1

# 7. Calculate Square Root
SELECT SQRT(144);

Output
12

# 8. Find Power
SELECT POWER(5,3);

Output
125

# Exercises (Basic Level)
# Q1 Display all employee names and salaries.

SELECT EmpName, Salary
FROM Employees;

# Q2 Display employees whose age is greater than 25.

SELECT *
FROM Employees
WHERE Age > 25;

# Q3 Display employees whose salary is less than 50000.

SELECT *
FROM Employees
WHERE Salary < 50000;

# Q4 Find the total salary of all employees.

SELECT SUM(Salary)
FROM Employees;

# Q5 Find the average age of employees.

SELECT AVG(Age)
FROM Employees;
Exercises (Intermediate)

# Q6 Find employees whose experience is greater than 3 years.

SELECT *
FROM Employees
WHERE Experience > 3;

# Q7 Display employees whose salary is between 30000 and 60000.

SELECT *
FROM Employees
WHERE Salary BETWEEN 30000 AND 60000;

# Q8 Find the highest salary and lowest salary.

SELECT
    MAX(Salary) AS Highest_Salary,
    MIN(Salary) AS Lowest_Salary
FROM Employees;

# Q9 Count the number of employees whose age is above 25.

SELECT
    COUNT(*) AS Employee_Count
FROM Employees
WHERE Age > 25;

# Q10 Find employees whose salary is divisible by 5000.
SELECT *
FROM Employees
WHERE MOD(Salary, 5000) = 0;


# Exercises (Advanced)

# Q11 Display employees whose age is an even number.

SELECT *
FROM Employees
WHERE MOD(Age, 2) = 0;


# Q12 Display employees whose age is an odd number.

SELECT *
FROM Employees
WHERE MOD(Age, 2) = 1;

# Q13 Display employees whose experience squared is greater than 25.

SELECT *
FROM Employees
WHERE POWER(Experience, 2) > 25;


# Q14 Display employees whose salary is the maximum salary.

Hint:

SELECT *
FROM Employees
WHERE Salary =
(
    SELECT MAX(Salary)
    FROM Employees
);

# Q15 Generate a random integer between 1 and 100.

SELECT FLOOR(RAND()*100)+1;

/*

# list date related sql commands and related exercise
# MySQL Date Related SQL Commands

# MySQL provides many built-in functions to work with DATE, TIME, DATETIME, and TIMESTAMP values.

# Sample Table for Practice
*/

CREATE TABLE Employees (
    EmpID INT,
    EmpName VARCHAR(50),
    JoiningDate DATE,
    LoginTime TIME,
    LastLogin DATETIME
);

INSERT INTO Employees VALUES
(101, 'Arun',   '2022-06-15', '09:30:00', '2026-08-08 09:30:00'),
(102, 'Priya',  '2021-01-10', '10:00:00', '2026-08-07 10:15:20'),
(103, 'Rahul',  '2023-03-25', '08:45:00', '2026-08-08 08:50:30'),
(104, 'Ananya', '2020-11-05', '09:15:00', '2026-08-06 09:20:45'),
(105, 'Vignesh','2024-07-20', '11:00:00', '2026-08-08 11:10:15');

/*
# Important Date Functions

# Function	Description	Example	Output
*/
CURDATE()		Current date			SELECT CURDATE();									2026-08-08
CURRENT_DATE()	Current date			SELECT CURRENT_DATE();								2026-08-08
NOW()			Current date & time		SELECT NOW();										2026-08-08 14:30:45
CURRENT_TIME()	Current time			SELECT CURRENT_TIME();								14:30:45
YEAR()			Extract year			SELECT YEAR('2026-08-08');							2026
MONTH()			Extract month			SELECT MONTH('2026-08-08');							8
MONTHNAME()		Month name				SELECT MONTHNAME('2026-08-08');						August
DAY()			Day of month			SELECT DAY('2026-08-08');							8
DAYNAME()		Day name				SELECT DAYNAME('2026-08-08');						Saturday
DATEDIFF()		Difference in days		SELECT DATEDIFF('2026-08-08','2026-08-01');			7
DATE_ADD()		Add days/months/years	SELECT DATE_ADD('2026-08-08', INTERVAL 10 DAY);		2026-08-18
DATE_SUB()		Subtract interval		SELECT DATE_SUB('2026-08-08', INTERVAL 1 MONTH);	2026-07-08
LAST_DAY()		Last day of month		SELECT LAST_DAY('2026-08-08');						2026-08-31


# Examples
# 1. Display Current Date

		SELECT CURDATE();
		Output

		2026-08-08

# 2. Display Current Date and Time

		SELECT NOW();

		Output
		2026-08-08 14:30:45

# 3. Extract Year from Joining Date
		SELECT EmpName,
			   JoiningDate,
			   YEAR(JoiningDate) AS JoiningYear
		FROM Employees;

		Output

		EmpName	JoiningDate	JoiningYear
		Arun	2022-06-15	2022
		Priya	2021-01-10	2021

# 4. Extract Month Name
		SELECT EmpName,
			   MONTHNAME(JoiningDate) AS JoiningMonth
		FROM Employees;
		
		Output
		
		EmpName	JoiningMonth
		Arun	June
		Priya	January

# 5. Calculate Experience in Days
		SELECT EmpName,
			   JoiningDate,
			   DATEDIFF(CURDATE(), JoiningDate) AS ExperienceDays
		FROM Employees;

# 6. Add 6 Months to Joining Date
		SELECT EmpName,
			   JoiningDate,
			   DATE_ADD(JoiningDate, INTERVAL 6 MONTH) AS ConfirmationDate
		FROM Employees;

# 7. Subtract 1 Year from Current Date
		SELECT DATE_SUB(CURDATE(), INTERVAL 1 YEAR);


# Q1 Display employee names and their joining dates.

		SELECT EmpName, JoiningDate
		FROM Employees;

# Q2 Display current date.

		SELECT CURDATE();

# Q3 Display current date and time.

		SELECT NOW();

# Q4 Extract the year from JoiningDate.

		SELECT EmpName,
			   YEAR(JoiningDate)
		FROM Employees;

# Q5 Extract the month name from JoiningDate.

		SELECT EmpName,
			   MONTHNAME(JoiningDate)
		FROM Employees;


# Q6 Display employees who joined after '2022-01-01'.

		SELECT *
		FROM Employees
		WHERE JoiningDate > '2022-01-01';

# Q7 Display employees who joined in the year 2023.

		SELECT * 
		FROM EMPLOYEES 
		WHERE YEAR(JOININGDATE) = 2023;

# Q8 Display employees who joined in the month of June.

		SELECT * 
		FROM EMPLOYEES 
		WHERE MONTHNAME(JoiningDate)='June';

# Q9 Find the number of days each employee has worked in the company.

		SELECT *, DATEDIFF(CURDATE(), JoiningDate) "No of days worked"
		FROM EMPLOYEES;

# Q10 Find the last day of the joining month.

		SELECT *, LAST_DAY(JoiningDate) "Last day of the Joining month"
		FROM EMPLOYEES;


# Q11 Display employees who joined during the last 2 years.

		SELECT *
		FROM EMPLOYEES
		WHERE JoiningDate >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)

Q12 Display employees whose joining month is August.

		SELECT * 
		FROM EMPLOYEES 
		WHERE MONTHNAME(JoiningDate)='August';

Q13 Display employees who joined on a Monday.

		SELECT * 
		FROM EMPLOYEES 
		WHERE DAYNAME(JoiningDate)='Monday';


Q14 Display employees whose experience is more than 1000 days.

		SELECT *, DATEDIFF(CURDATE(), JoiningDate) "No of days worked"
		FROM EMPLOYEES
        WHERE DATEDIFF(CURDATE(), JoiningDate) > 1000

Q15 Display the employee name, joining date, and confirmation date (after adding 6 months).


		SELECT EMPNAME, 
			   JOININGDATE, 
			   DATE_ADD(JOININGDATE, INTERVAL 6 MONTH) "CONFIRMATION DATE"
		FROM EMPLOYEES;

# Additional Useful Date Functions

Function						Example											Output
EXTRACT(YEAR FROM date)			SELECT EXTRACT(YEAR FROM '2026-08-08');			2026
WEEKDAY(date)					SELECT WEEKDAY('2026-08-08');					5
QUARTER(date)					SELECT QUARTER('2026-08-08');					3
TIME(NOW())						SELECT TIME(NOW());								14:30:45
DATE(NOW())						SELECT DATE(NOW());								2026-08-08

/*
In MySQL, there is no separate Boolean storage type internally.

BOOLEAN and BOOL are aliases for TINYINT(1).
TRUE is stored as 1
FALSE is stored as 0
*/

# 1. Creating a Table with BOOLEAN

CREATE TABLE Employees (
    EmpID INT,
    EmpName VARCHAR(50),
    IsActive BOOLEAN,
    IsManager BOOLEAN
);

INSERT INTO Employees VALUES
(101, 'Arun', TRUE, FALSE),
(102, 'Priya', TRUE, TRUE),
(103, 'Rahul', FALSE, FALSE),
(104, 'Ananya', TRUE, FALSE),
(105, 'Vignesh', FALSE, TRUE);

/*
Boolean Related Operators

Operator		Description					Example
	=			Equal to					IsActive = TRUE
!= or <>		Not equal					IsManager <> TRUE
*/


# 1. Display Active Employees

		SELECT *
		FROM Employees
		WHERE IsActive = TRUE;

		Output

		EmpID	EmpName	IsActive	IsManager
		101		Arun	1			0
		102		Priya	1			1
		104		Ananya	1			0

# 2. Display Employees Who Are Managers

		SELECT *
		FROM Employees
		WHERE IsManager = TRUE;

# 3. Display Employees Who Are Not Active

		SELECT *
		FROM Employees
		WHERE IsActive = FALSE;

# 4. Display Active Managers

		SELECT *
		FROM Employees
		WHERE IsActive = TRUE
		AND IsManager = TRUE;

		Output

		EmpID	EmpName		IsActive	IsManager
		102		Priya		1			1

# 5. Display Employees Who Are Either Active or Managers

		SELECT *
		FROM Employees
		WHERE IsActive = TRUE
		OR IsManager = TRUE;
		
# Q1 Display all employees who are active.

		SELECT *
		FROM Employees
		WHERE IsActive = TRUE;

# Q2 Display all employees who are not active.

		SELECT *
		FROM Employees
		WHERE IsActive = FALSE;

# Q3 Display all managers.

		SELECT *
		FROM Employees
		WHERE IsManager = TRUE;

# Q4 Display employees who are both active and managers.

		SELECT *
		FROM Employees
		WHERE IsActive = TRUE
		AND IsManager = TRUE;

# Q5 Display employees who are not managers.

		SELECT *
		FROM Employees
		WHERE IsManager = FALSE;
