CREATE DATABASE University;

USE University;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(50),
    email VARCHAR(100),
    course VARCHAR(50),
    gpa DECIMAL(3,1)
);

INSERT INTO Students VALUES
(1, 'Amit', 'CSE', 'amit@gmail.com', 'SQL', 8.5),
(2, 'Riya', 'ECE', NULL, 'Python', 7.2),
(3, 'Karan', 'CSE', 'karan@gmail.com', 'SQL', 9.1),
(4, 'Sneha', 'MECH', NULL, 'Java', 6.8),
(5, 'Pooja', 'ECE', 'pooja@gmail.com', 'Python', 8.0),
(6, 'Rahul', 'CSE', NULL, 'AI', 9.5);

SELECT * FROM Students;

SELECT DISTINCT department
FROM Students;

SELECT DISTINCT department
FROM Students
WHERE gpa > 8;

SELECT student_name, email
FROM Students
WHERE email IS NULL;

SELECT student_name, email
FROM Students
WHERE email IS NOT NULL;

SELECT student_name, course
FROM Students
WHERE course IN ('SQL', 'Python');

SELECT student_name, gpa
FROM Students
WHERE gpa BETWEEN 7 AND 9;

SELECT student_name, gpa
FROM Students
WHERE gpa NOT BETWEEN 7 AND 9;