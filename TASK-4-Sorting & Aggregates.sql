CREATE DATABASE Ecommerce;
USE Ecommerce;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT
);

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 75000),
(102, 'Mobile Phone', 'Electronics', 45000),
(103, 'Headphones', 'Accessories', 3000),
(104, 'Smart TV', 'Electronics', 65000),
(105, 'Washing Machine', 'Appliances', 55000),
(106, 'Refrigerator', 'Appliances', 60000),
(107, 'Smart Watch', 'Accessories', 12000);

SELECT * FROM Products
ORDER BY price DESC;

SELECT product_name, price FROM Products
ORDER BY price DESC
LIMIT 3;

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    amount INT
);

INSERT INTO Sales VALUES
(1, 'Laptop', 'Electronics', 75000),
(2, 'Mobile', 'Electronics', 45000),
(3, 'Headphones', 'Accessories', 3000),
(4, 'Smart TV', 'Electronics', 65000),
(5, 'Washing Machine', 'Appliances', 55000),
(6, 'Refrigerator', 'Appliances', 60000),
(7, 'Smart Watch', 'Accessories', 12000);

SELECT COUNT(*) AS total_sales FROM Sales;

SELECT SUM(amount) AS total_revenue FROM Sales;

SELECT AVG(amount) AS average_sale FROM Sales;

SELECT MAX(amount) AS highest_sale FROM Sales;

SELECT MIN(amount) AS lowest_sale FROM Sales;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'Amit', 'IT'),
(2, 'Riya', 'IT'),
(3, 'Karan', 'IT'),
(4, 'Sneha', 'IT'),
(5, 'Pooja', 'IT'),
(6, 'Rahul', 'IT'),
(7, 'Neha', 'IT'),
(8, 'Vikas', 'IT'),
(9, 'Anjali', 'IT'),
(10, 'Rohit', 'IT'),
(11, 'Meena', 'IT'),
(12, 'Suresh', 'HR'),
(13, 'Kavya', 'HR'),
(14, 'Arjun', 'Finance');

SELECT department, COUNT(*) AS emp_count
FROM Employees
GROUP BY department;

SELECT department, COUNT(*) AS emp_count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 10;