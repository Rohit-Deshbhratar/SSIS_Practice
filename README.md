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

## 7. Row_Count_Transformation
In this project we are counting number of rows in a table. We have used OLEDB source, row count transformation and
script task. In script task C# is used as scripting language. Following code is used to show total number of rows
"MessageBox.Show(Dts.Variable["User::row_count"].value.ToString());" (without "" quotes). This code is reponsible to 
show row count in table. "User::row_count" is variable.

## 8. Conditional Split
In this project we are going to use a table named "PATIENTS" which contains patients data. We are going to apply 
conditional split on "GENDER" column of table "PATIENTS". Data will be split into "MALE" & "FEMALE" and stored into
flat file named "PATIENTS_MALE" and "PATIENTS_FEMALE".

## 9. Merge Transformation(With "SORT" transformation)
In this project we are combining input from two flat files into one flat file. The data from both input file will be
sorted first then merged and then saved into final output file. The data will be sorted on the basis of "PATIENT_ID"
column present in both files. File used in this project are "Merge_Transformation_Female", "Merge_Transformation_Male"
and "Merge_Transformation_Output".

## 10. Merge Transformation(Without "SORT" transformation)
This projet is very similar to the project 9, difference is we haven't used sort transformation. To sort data we used
"Advanced editor...". First select "Flat File Source Output" -> "Common Properties" -> "ISSorted" -> "True". Then
"Flat File Source Output" -> "Output Column" -> Select respective column name -> "Common Properties" -> "SortKeyPosition" -> 1.
Apply "MERGE" transformation and saved output in a flat file.

## 11. Aggregate Transformation
It is used to perform aggregate operations on datasets. It has one input and can have multiple output.For multiple output
duoble click "Aggregate" -> click on "Advanced" and enter another aggregation just below the old aggregation.

In this project we have used "patients" table. For aggregation, we grouped data using "city", "gender". 
Aggregation with "city" will show patient count from all the cities, and "gender" will display total count of male and female.

The difference between SQL aggregation and SSIS aggregation is -> in SSIS we can do multiple aggregation at single time and
in SQL aggregation we can not do multiple aggregation in single time.

## 12. Row Sampling Transformation
In this transformation we can set how many number of rows we want for sampling. It has two output, one for selected data
and other for unselected data.
## 13. Percentage Sampling Transformation
In this transformation we can set how many percent of rows we want for sampling. It has two output, one for selected data
and other for unselected data.

## 14. Charactermap Transformation
Charactermap is used to transform input character. Operates only on column with string data.
Charactermap transformation convert column data in place or add column tomtransform output and put converted data into new column.

In this project we havw used "patients" table to convert first name in upper case and last name in lower case using Charactermap transformation.
## 15. Cache Transformation
This uses memory cache/file cache as configured in cache connection manager and pulls data from there.
In this project, we used this transformation to save reference table in ".caw" format then perform lookup transformation using cache transformation.

## 16. Lookup Transformation
It compares source data with existing table and filter matching and unmatching rows. Reference dataset can be OLEDB or cache connection manager.
It tries to perform equi join between value in transformation and value in reference data set.

## 17. Lookup Transformation Scenarios
This project has covered 7 scenarios. 
1. CASE 1 IS "EQUI JOIN". i.e. BOTH TABLE HAVE SAME DATA & SAME NUMBER OF RECORDS.
2. CASE 2 IS "MORE NUMBER OF RECORDS IN SOURCE TABLE". 3. CASE 3 IS "MORE NUMBER OF RECORDS IN LOOKUP(REFERENCE) TABLE".
4. CASE 4 IS "DUPLICATE RECORDS IN SOURCE TABLE". 5. CASE 5 IS "DUPLICATE RECORDS IN LOOKUP TABLE".
6. CASE 6 IS "CASE SENSITIVE". 7. CASE 7 IS "NULL VALUE".

Each secnario hac different output. NOTE: In lookup transformation editor select different cache mode to see the effect
of these cache mode on output. Cache Mode are: Full cache, Partial Cache and No cache.

## 18. Audit Transformation
The audit transformation is used to get information like, "Package name, Task name, User name, etc.". In this project
we are also collecting some information and storing that data in a flat file named "AUDIT_TRANSFORMATION_OUTPUT".

## 19. Import Column
In this project we are storing file path and files in database. Name of table is "IMPORT_COLUMN", file type is excel and JPG.
NOTE: size of "varbinary" datatype shoud be set to max i.e. FILES varbinary(max). 