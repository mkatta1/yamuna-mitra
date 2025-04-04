drop table if exists employees;
Create table Employees
(
	Id int primary key auto_increment,
	FirstName nvarchar(100),
	Gender nvarchar(10)
);

Insert into Employees (FirstName, Gender) values ('Mark', 'Male');
Insert into Employees (FirstName, Gender) values ('John', 'Male');
Insert into Employees (FirstName, Gender) values ('Sara', 'Female');
Insert into Employees (FirstName, Gender) values ('Valarie', 'Female');
Insert into Employees (FirstName, Gender) values ('David', 'Male');
Insert into Employees (FirstName, Gender) values ('Ellie', 'Female');
Insert into Employees (FirstName, Gender) values ('Todd', 'Male');

STRING_SPLIT() SQL Server built-in function. 
This function is very easy to use. As the name implies, it splits a given string and returns a single-column table whose rows are the substrings. 
The name of the column is Value

STRING_SPLIT ( string , separator )
It has 2 parameters - The string that we want to split and the seprator. In our example, the seprator is a comma (,)

Declare @FirstNamesList nvarchar(100) = 'Mark,John,Sara'
Select * from STRING_SPLIT(@FirstNamesList, ',')
If you execute the above query, we get the following result as expected.

Using STRING_SPLIT with IN Clause:
Declare @FirstNamesList nvarchar(100) = 'Mark,John,Sara'
SELECT * FROM Employees where FirstName IN (SELECT * FROM STRING_SPLIT(@FirstNamesList, ','));

Using STRING_SPLIT in a JOIN operation:
Declare @FirstNamesList nvarchar(100) = 'Mark,John,Sara'
SELECT Employees.* FROM Employees 
		 JOIN STRING_SPLIT(@FirstNamesList, ',') Result
		 ON Result.VALUE = Employees.FirstName

