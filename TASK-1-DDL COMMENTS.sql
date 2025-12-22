CREATE DATABASE City_Hospital;
USE City_Hospital;

CREATE TABLE Patients(
	Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(50),
    Age INT,
    Gender ENUM('M','F'),
    Admission_Date DATE DEFAULT (CURRENT_DATE)
);

SELECT * FROM Patients;

ALTER TABLE Patients
ADD COLUMN Doctor_Assigned VARCHAR(50);

ALTER TABLE Patients
MODIFY COLUMN Patient_Name VARCHAR(100);

RENAME TABLE Patients TO Patient_Info;

SELECT * FROM Patient_Info;

INSERT INTO Patient_Info
(Patient_ID, Patient_Name, Age, Gender, Admission_Date, Doctor_Assigned)
VALUES (1021, "DEEPIKA", 32, "F", "2025-01-06", "DR.SARANYA");


TRUNCATE TABLE Patient_Info;

DROP TABLE Patient_Info;


