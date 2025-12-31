CREATE DATABASE Emp;
USE Emp;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'amit', 'sharma'),
(2, 'Riya', 'Patel'),
(3, 'KARAN', 'singh'),
(4, 'Sneha', 'Verma');

SELECT UPPER(first_name) AS first_name_upper
FROM Employees;

SELECT LOWER(last_name) AS last_name_lower
FROM Employees;

SELECT SUBSTRING(first_name, 1, 3) AS short_name
FROM Employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM Employees;

CREATE TABLE Employee_Dates (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    hire_date DATE
);

INSERT INTO Employee_Dates VALUES
(1, 'Amit', '2019-06-15'),
(2, 'Riya', '2021-01-10'),
(3, 'Karan', '2018-09-01');

SELECT NOW();

SELECT emp_name, YEAR(hire_date) AS joining_year
FROM Employee_Dates;

SELECT emp_name, DATEDIFF(NOW(), hire_date) AS days_worked
FROM Employee_Dates;

SELECT emp_name,
       ROUND(DATEDIFF(NOW(), hire_date) / 365, 1) AS tenure_years
FROM Employee_Dates;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Amit', 'Kumar'),
(2, 'Riya', 'Shah');

DELIMITER //

CREATE FUNCTION get_full_name(
    fname VARCHAR(50),
    lname VARCHAR(50)
)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN CONCAT(fname, ' ', lname);
END //

DELIMITER ;

SELECT get_full_name(first_name, last_name) AS full_name
FROM Students;

