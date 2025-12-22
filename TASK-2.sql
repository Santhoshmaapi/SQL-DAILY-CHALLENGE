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
