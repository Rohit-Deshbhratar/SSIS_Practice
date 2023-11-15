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
