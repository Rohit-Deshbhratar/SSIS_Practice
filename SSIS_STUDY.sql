--CREATE DATABASE SSIS_STUDY;

--USE SSIS_STUDY

--USE THIS TABLE FOR SSIS PROJECT "FlatFile_To_DataBase".
CREATE TABLE CUSTOMERS(
	CustomerNumber INT,
	Name Varchar(50),
	Address Varchar(100),
	City Varchar(30),
	State Varchar(30),
	Zip INT
);

SELECT * FROM CUSTOMERS;
------------------------------------------------------------------------------------------------------------------------------------------
--USE THIS TABLE FIR SSIS PROJECT-> "EXCEL_TO_SQL".
--USE EXCEL SHEET "Student_Marks" TO LOAD DATA IN THIS TABLE.
CREATE TABLE STUDENTS(
	ROLL_NUMBER INT IDENTITY(1001,1) PRIMARY KEY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	MIDDLE_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50) NOT NULL,
	GENDER VARCHAR(1) NOT NULL,
	MARATHI INT NOT NULL CHECK(MARATHI < 0 OR MARATHI <= 100),
	HINDI INT NOT NULL CHECK(HINDI < 0 OR HINDI <= 100),
	ENGLISH INT NOT NULL CHECK(ENGLISH < 0 OR ENGLISH <= 100),
	SCIENCE INT NOT NULL CHECK(SCIENCE < 0 OR SCIENCE <= 100),
	MATHS INT NOT NULL CHECK(MATHS < 0 OR MATHS <= 100),
	HISTORY INT NOT NULL CHECK(HISTORY < 0 OR HISTORY <= 100),
	GEOGRAPHY INT NOT NULL CHECK(GEOGRAPHY < 0 OR GEOGRAPHY <= 100)
);

--SET IDENTITY_INSERT STUDENTS ON;
--SET IDENTITY_INSERT STUDENTS OFF;

SELECT * FROM STUDENTS;
--TRUNCATE TABLE STUDENTS;
--DROP TABLE STUDENTS;

SELECT
	CONCAT(FIRST_NAME,' ',MIDDLE_NAME, ' ',ISNULL(LAST_NAME, ' '))
FROM 
	STUDENTS;

SELECT
	ROLL_NUMBER
FROM 
	STUDENTS
where MIDDLE_NAME is null;

SELECT LEN(MIDDLE_NAME) FROM STUDENTS;

UPDATE
	STUDENTS
SET
	MIDDLE_NAME = NULL
WHERE
	LEN(MIDDLE_NAME) = 0;
------------------------------------------------------------------------------------------------------------------------------------------
--FOR SSIS PROJECT "Package_Level_Parameter" USE FOLLOWING COMMANDS.
--THE "?" CONTAINS PACKAGE LEVEL PARAMETER VALUE i.e. "CA".

SELECT * FROM CUSTOMERS
WHERE State = ?
------------------------------------------------------------------------------------------------------------------------------------------
--FOR SSIS PROJECT "Project_Level_Parameter" USE FOLLOWING COMMANDS.
--THE "?" CONTAINS PROJECT LEVEL PARAMETER VALUE i.e. 60643.

SELECT * FROM CUSTOMERS
WHERE Zip = ?
------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE STUDENTS_DWH(
	ROLL_NUMBER INT IDENTITY(1001,1) PRIMARY KEY,
	FULL_NAME VARCHAR(60),
	GENDER VARCHAR(1) NOT NULL,
	MARATHI INT NOT NULL CHECK(MARATHI < 0 OR MARATHI <= 100),
	HINDI INT NOT NULL CHECK(HINDI < 0 OR HINDI <= 100),
	ENGLISH INT NOT NULL CHECK(ENGLISH < 0 OR ENGLISH <= 100),
	SCIENCE INT NOT NULL CHECK(SCIENCE < 0 OR SCIENCE <= 100),
	MATHS INT NOT NULL CHECK(MATHS < 0 OR MATHS <= 100),
	HISTORY INT NOT NULL CHECK(HISTORY < 0 OR HISTORY <= 100),
	GEOGRAPHY INT NOT NULL CHECK(GEOGRAPHY < 0 OR GEOGRAPHY <= 100),
	TOTAL INT,
	PERCENTAGE DECIMAL(4,2),
	RESULT VARCHAR(4)
);

SELECT * FROM STUDENTS_DWH;
--TRUNCATE TABLE STUDENTS_DWH;
--DROP TABLE STUDENTS_DWH;
------------------------------------------------------------------------------------------------------------------------------------------