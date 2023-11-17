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
	ROLL_NUMBER INT IDENTITY PRIMARY KEY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	MIDDLE_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50) NOT NULL,
	GENDER VARCHAR(1) NOT NULL,
	MARATHI INT NOT NULL CHECK(MARATHI < 0 OR MARATHI > 100),
	HINDI INT NOT NULL CHECK(HINDI < 0 OR HINDI > 100),
	ENGLISH INT NOT NULL CHECK(ENGLISH < 0 OR ENGLISH > 100),
	SCIENCE INT NOT NULL CHECK(SCIENCE < 0 OR SCIENCE > 100),
	MATHS INT NOT NULL CHECK(MATHS < 0 OR MATHS > 100),
	HISTORY INT NOT NULL CHECK(HISTORY < 0 OR HISTORY > 100),
	GEOGRAPHY INT NOT NULL CHECK(GEOGRAPHY < 0 OR GEOGRAPHY > 100),
);
SELECT * FROM STUDENTS;
------------------------------------------------------------------------------------------------------------------------------------------
--FOR SSIS PROJECT "Project_Level_Parameter" USE FOLLOWING COMMANDS.
--THE "?" CONTAINS PACKAGE LEVEL PARAMETER VALUE i.e. "CA".

SELECT * FROM CUSTOMERS
WHERE State = ?
------------------------------------------------------------------------------------------------------------------------------------------
