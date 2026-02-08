-- Step 1: Create Database
CREATE DATABASE hospital_db;

-- Step 2: Use Database
USE hospital_db;

-- Step 3: Create Patients Table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    medical_history TEXT
);

-- Step 4: View Tables
SHOW TABLES;

-- Step 5: Insert Patient Records
INSERT INTO patients
(patient_id, name, age, gender, medical_history)
VALUES
(1, 'Ayesha', 20, 'Female', 'Fever and cold');

INSERT INTO patients
(patient_id, name, age, gender, medical_history)
VALUES
(2, 'Rahul', 35, 'Male', 'Diabetes');

-- Step 6: View Patient Details
SELECT * FROM patients;

-- Step 7: Update Medical History
UPDATE patients
SET medical_history = 'Recovered from fever'
WHERE patient_id = 1;

-- Step 8: Verify Update
SELECT * FROM patients WHERE patient_id = 1;

-- Step 9: Delete Patient Record
DELETE FROM patients WHERE patient_id = 2;

-- Step 10: Verify Delete
SELECT * FROM patients;
