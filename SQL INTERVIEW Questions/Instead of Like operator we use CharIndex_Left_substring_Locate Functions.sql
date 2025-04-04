Create table Students
(
     ID int primary key auto_increment,
     Name nvarchar(50),
     Gender nvarchar(50),
     Salary int
);

Insert into Students (Name, Gender, Salary) values ('Mark', 'Male', 60000);
Insert into Students (Name, Gender, Salary) values ('Steve', 'Male', 45000);
Insert into Students (Name, Gender, Salary) values ('James', 'Male', 70000);
Insert into Students (Name, Gender, Salary) values ('Mike', 'Male', 45000);
Insert into Students (Name, Gender, Salary) values ('Mary', 'Female', 30000);
Insert into Students (Name, Gender, Salary) values ('Valarie', 'Female', 35000);
Insert into Students (Name, Gender, Salary) values ('John', 'Male', 80000);

/*
Interview question : Write a query to select all student rows whose Name starts with letter 'M' without using the LIKE operator
If the interviewer has not mentioned not to use LIKE operator, we would have written the query using the LIKE operator as shown below.
SELECT * FROM Students WHERE Name LIKE 'M%'
We can use any one of the following 3 SQL Server functions, to achieve exactly the same thing.
CHARINDEX
LEFT
SUBSTRING
*/

/*The following 3 queries retrieve all student rows whose Name starts with letter 'M'.
Notice none of the queries are using the LIKE operator.
CHARINDEX('sub_string', columname) or CHARINDEX('sub_string', 'Mainstring', startposition) or CHARINDEX('sub_string', startposition)

In Mysql, similar to CHARINDEX we have LOCATE, INSTR, SUBSTRING
*/

SELECT * FROM Students WHERE CHARINDEX('M',Name) = 1;
select * from students where locate('M',Name) = 1;
select * from students where instr('M', Name) = 1;
SELECT * FROM Students WHERE LEFT(Name, 1) = 'M';
SELECT * FROM Students WHERE SUBSTRING(Name, 1, 1) = 'M';

select * from students where left(Name, 1)= 'M';