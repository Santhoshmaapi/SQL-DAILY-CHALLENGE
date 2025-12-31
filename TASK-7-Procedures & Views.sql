USE Emp;

CREATE TABLE Employeess (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employeess VALUES
(1, 'Amit', 'IT', 50000),
(2, 'Riya', 'HR', 45000),
(3, 'Karan', 'Finance', 60000);

DELIMITER //

CREATE PROCEDURE GetEmployeeById(IN empId INT)
BEGIN
    SELECT * 
    FROM Employees
    WHERE emp_id = empId;
END //

DELIMITER ;

CALL GetEmployeeById(2);

CREATE VIEW Employee_View AS
SELECT emp_name, department
FROM Employeess;

SELECT * FROM Employee_View;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Salaries (
    emp_id INT,
    salary INT
);

INSERT INTO Departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance');

INSERT INTO Salaries VALUES
(1, 50000),
(2, 45000),
(3, 60000);

DROP VIEW IF EXISTS Employee_Full_Details;

CREATE VIEW Employee_Full_Details AS
SELECT
    e.emp_id,
    d.dept_name,
    s.salary
FROM Employeess e
JOIN Departments d
    ON e.department = d.dept_name
JOIN Salaries s
    ON e.emp_id = s.emp_id;
    
SELECT * FROM Employee_Full_Details;