CREATE DATABASE College_Students;
USE College_Students;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE Enrollments (
    student_id INT,
    course_id INT
);

INSERT INTO Students VALUES
(1, 'Amit'),
(2, 'Riya'),
(3, 'Karan'),
(4, 'Sneha');

INSERT INTO Courses VALUES
(101, 'SQL'),
(102, 'Python'),
(103, 'Java');

INSERT INTO Enrollments VALUES
(1, 101),
(2, 102),
(3, 101);

SELECT s.student_name, c.course_name
FROM Students s
INNER JOIN Enrollments e
ON s.student_id = e.student_id
INNER JOIN Courses c
ON e.course_id = c.course_id;

SELECT s.student_name, c.course_name
FROM Students s
LEFT JOIN Enrollments e
ON s.student_id = e.student_id
LEFT JOIN Courses c
ON e.course_id = c.course_id;

SELECT s.student_name, c.course_name
FROM Students s
RIGHT JOIN Enrollments e
ON s.student_id = e.student_id
RIGHT JOIN Courses c
ON e.course_id = c.course_id;

CREATE TABLE CurrentEmployees (
    emp_name VARCHAR(50)
);

CREATE TABLE PastEmployees (
    emp_name VARCHAR(50)
);

INSERT INTO CurrentEmployees VALUES
('Amit'),
('Riya'),
('Karan');

INSERT INTO PastEmployees VALUES
('Riya'),
('Neha'),
('Suresh');

SELECT emp_name FROM CurrentEmployees
UNION
SELECT emp_name FROM PastEmployees;

SELECT emp_name FROM CurrentEmployees
UNION ALL
SELECT emp_name FROM PastEmployees;
