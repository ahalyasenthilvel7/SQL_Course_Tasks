/*
MySQL Operators, Expressions, and Basic Concepts for Beginners

When learning MySQL, students should first understand operators, expressions, and some basic SQL concepts before moving to complex queries.

1. What is an Operator?

An operator is a symbol used to perform operations on data.
*/

# Create Employees Table

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Age INT,
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    Experience INT
);

# Insert Sample Data

INSERT INTO Employees VALUES
(101,'Arun','IT',25,30000,5000,2),
(102,'Bala','HR',28,35000,3000,4),
(103,'Charan','Finance',32,45000,7000,8),
(104,'Deepa','IT',26,38000,4000,3),
(105,'Esha','Marketing',30,42000,6000,5),
(106,'Farhan','HR',24,28000,2000,1),
(107,'Gokul','IT',35,55000,8000,10),
(108,'Harini','Finance',29,40000,5000,6),
(109,'Indhu','Marketing',27,32000,3000,2),
(110,'Jagan','IT',31,48000,7000,7);

# Example

SELECT 10 + 5;

/*
Output:

15

Here + is an operator.

2. What is an Expression?

An expression is a combination of values, columns, and operators that produces a result.

Example
*/
SELECT Salary * 12 AS AnnualSalary
FROM Employees;
/*
Salary * 12 is an expression.

3. Arithmetic Operators

Used for mathematical calculations.

Operator	Meaning	Example
+	Addition	10 + 5
-	Subtraction	10 - 5
*	Multiplication	10 * 5
/	Division	10 / 5
%	Modulus (Remainder)	10 % 3
Examples
*/
SELECT 20 + 10;
SELECT 50 - 15;
SELECT 10 * 5;
SELECT 100 / 4;
SELECT 17 % 5;
/*
4. Comparison Operators

Used to compare values.

Operator	Meaning
=	Equal to
!=	Not Equal
<>	Not Equal
>	Greater than
<	Less than
>=	Greater than or Equal
<=	Less than or Equal
Examples
SELECT * FROM Employees
WHERE Salary > 50000;
SELECT * FROM Employees
WHERE Age <= 25;
SELECT * FROM Employees
WHERE Department = 'IT';
5. Logical Operators

Used to combine conditions.

Operator	Meaning
AND	All conditions true
OR	Any condition true
NOT	Opposite condition
Example AND
*/
SELECT *
FROM Employees
WHERE Salary > 30000
AND Age > 25;


# Example OR

SELECT *
FROM Employees
WHERE Department='IT'
OR Department='HR';

# Example NOT

SELECT *
FROM Employees
WHERE NOT Department='Sales';

/*
6. BETWEEN Operator

Checks values within a range.

Example
*/

SELECT *
FROM Employees
WHERE Salary BETWEEN 30000 AND 60000;

/*
Equivalent to:

WHERE Salary >= 30000
AND Salary <= 60000;
7. IN Operator

Checks multiple values.

Example
*/
SELECT *
FROM Employees
WHERE Department IN ('IT','HR','Finance');

/*
Equivalent to:

WHERE Department='IT'
OR Department='HR'
OR Department='Finance';
8. LIKE Operator

Used for pattern matching.

Symbol	Meaning
%	Any number of characters
_	Single character
Example

Names starting with A:
*/
SELECT *
FROM Employees
WHERE EmpName LIKE 'A%';

# Names ending with n:

SELECT *
FROM Employees
WHERE EmpName LIKE '%n';

# Names containing a:

SELECT *
FROM Employees
WHERE EmpName LIKE '%a%';

# 9. IS NULL Operator

# Checks missing values.

# Example

SELECT *
FROM Employees
WHERE ManagerID IS NULL;


# 10. Alias (AS)

# Used to rename columns temporarily.

# Example

SELECT Salary AS MonthlySalary
FROM Employees;

# 11. Concatenation

# Combine text values.

# Example

SELECT CONCAT('Hello',' ','World');
/*
Output:

Hello World
12. Mathematical Expressions
Example
*/

SELECT Salary + 5000 AS NewSalary
FROM Employees;

SELECT Salary * 1.10 AS IncreasedSalary
FROM Employees;

# 13. String Expressions

SELECT UPPER(EmpName)
FROM Employees;

SELECT LOWER(EmpName)
FROM Employees;

SELECT LENGTH(EmpName)
FROM Employees;

# 14. Date Expressions

# Current Date

SELECT CURDATE();

# Current Time

SELECT CURTIME();

# Current Date and Time

SELECT NOW();

# Add Days

SELECT DATE_ADD(CURDATE(), INTERVAL 10 DAY);

/*
# 15. Aggregate Functions

# Used to summarize data.

Function		Purpose
COUNT()			Count records
SUM()			Total
AVG()			Average
MAX()			Highest value
MIN()			Lowest value

# Examples
*/
SELECT COUNT(*) FROM Employees;

SELECT AVG(Salary) FROM Employees;

SELECT MAX(Salary) FROM Employees;
/*
# 16. Operator Precedence

# MySQL follows mathematical precedence.

# Example
*/
SELECT 10 + 5 * 2;

/*
Output:

20

Because multiplication happens first.

Use parentheses:
*/
SELECT (10 + 5) * 2;

/*
Output:

30

Beginner Practice Questions

Arithmetic
Q1. Add 25 and 15.
Q2. Find the remainder when 35 is divided by 6.
Q3. Multiply 12 by 8.

Comparison
Q4. Display employees with salary greater than 40000.
Q5. Display employees whose age is less than 30.
Q6. Find employees with exactly 5 years of experience.

Logical
Q7. Find employees aged above 25 and salary above 30000.
Q8. Find employees from IT or HR departments.
Q9. Exclude employees from Sales.

Pattern Matching
Q10. Find names starting with 'S'.
Q11. Find names ending with 'a'.
Q12. Find names containing 'an'.

Aggregate Functions
Q13. Count total employees.
Q14. Find average salary.
Q15. Find highest and lowest salary.

Quick Revision Table
Category			Operators
Arithmetic			+, -, *, /, %
Comparison			=, !=, <>, >, <, >=, <=
Logical				AND, OR, NOT
Range				BETWEEN
Multiple Values		IN
Pattern Matching	LIKE
Null Check			IS NULL
Aggregation			COUNT, SUM, AVG, MAX, MIN
*/