CREATE DATABASE Logistic_hub;
USE Logistic_hub;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT
);

CREATE TABLE Order_History (
    order_id INT,
    product_name VARCHAR(50),
    quantity INT,
    deleted_at DATETIME
);

INSERT INTO Orders VALUES
(1, 'Laptop', 2),
(2, 'Mobile', 1),
(3, 'Headphones', 3);

DELIMITER //

CREATE TRIGGER log_order_delete
AFTER DELETE ON Orders
FOR EACH ROW
BEGIN
    INSERT INTO Order_History
    VALUES (
        OLD.order_id,
        OLD.product_name,
        OLD.quantity,
        NOW()
    );
END //

DELIMITER ;

DELETE FROM Orders WHERE order_id = 2;

SELECT * FROM Order_History;

CREATE USER 'junior'@'localhost' IDENTIFIED BY 'junior123';

GRANT SELECT ON ecommerce.* TO 'junior'@'localhost';

REVOKE SELECT ON ecommerce.* FROM 'junior'@'localhost';

CREATE TABLE Accounts (
    acc_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance INT
);

INSERT INTO Accounts VALUES
(1, 'Amit', 10000),
(2, 'Riya', 8000);

START TRANSACTION;

UPDATE Accounts
SET balance = balance - 2000
WHERE acc_id = 1;

UPDATE Accounts
SET balance = balance + 2000
WHERE acc_id = 2;

COMMIT;

START TRANSACTION;

UPDATE Accounts
SET balance = balance - 5000
WHERE acc_id = 1;

-- Oops, mistake happened
ROLLBACK;

START TRANSACTION;

UPDATE Accounts SET balance = balance - 1000 WHERE acc_id = 1;
SAVEPOINT step1;

UPDATE Accounts SET balance = balance + 1000 WHERE acc_id = 2;
ROLLBACK TO step1;

COMMIT;