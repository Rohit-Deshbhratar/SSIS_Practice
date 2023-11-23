# SSIS_Practice
## 1. FlatFile_To_DataBase
In this project we are loading data from flat file to the database(SQLServer).
Create empty table, then load data. File name is "Customer_Flat_File.txt" and table is "CUSTOMERS".

## 2. SQL_To_CSV
In this project we are exporting data from database(SQLServer) to CSV file.
Table is alredy created and it has few records.
Database table is "CUSTOMER" & CSV file will be delivered after successful execution with name "SQL_To_DB.csv"

## 3. Package _Level_Parameter
In this project we have created a local variable called "State".
This variable refers to "State" column in "CUSTOMERS" table in database.
We've performed this project using SQL command which points to this local varible in "WHERE" condition.

## 4. Project_Level_Parameter
In this project we have created a global variable called "Zip".
This variable refers to "Zip" column in "CUSTOMERS" table in database.
We've performed this project using SQL command which points to this global varible in "WHERE" condition.

## 5. CSV_TO_SQL_DB
In this project we are transferring data from CSV to database table.
.csv file has data in it and database table is empty.
CSV file is "Students_Mark.csv" and table is "STUDENTS".

## 6. Dynamic_Connection_Manager
In this project we are creating flat file named "Dynamic_Connection_date_time.TXT". Where date is "YYYY_MM_DD",
time is "HOUR_MINUTE" and ".TXT" is extension. Whenever we run this project it will create a new file with name
mentioned in above format. For this we have used variables for formatting file name we have used SUBSTRING(). 