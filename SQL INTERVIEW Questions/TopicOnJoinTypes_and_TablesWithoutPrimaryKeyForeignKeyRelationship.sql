This is one of the very common sql server interview question. Different JOINS in SQL Server are discussed in detail in Part 12 of SQL Server tutorial for beginners video series.

Let's understand the difference with an example. 

INNER JOIN returns only the matching rows between the tables involved in the JOIN. Notice that, Pam employee record which does not have a matching DepartmentId in departments table is eliminated from the result-set.
SELECT EmployeeName, DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID

LEFT JOIN returns all rows from left table including non-matching rows. Notice that, Pam employee record which does not have a matching DepartmentId in departments table is also included in the result-set. 
SELECT EmployeeName, DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID

In general there could be several questions on JOINS in a sql server interview. If we understand the basics of JOINS properly, then answering any JOINS related questions should be a cakewalk.

What is the difference between INNER JOIN and RIGHT JOIN 
INNER JOIN returns only the matching rows between the tables involved in the JOIN, where as RIGHT JOIN returns all the rows from the right table including the NON-MATCHING rows.

What is the difference between INNER JOIN and FULL JOIN 
FULL JOIN returns all the rows from both the left and right tables including the NON-MATCHING rows.

What is the Difference between INNER JOIN and JOIN
There is no difference they are exactly the same. Similarly there is also no difference between 
LEFT JOIN and LEFT OUTER JOIN
RIGHT JOIN and RIGHT OUTER JOIN
FULL JOIN and FULL OUTER JOIN

Write a query to join 3 the tables and retrieve EmployeeName, DepartmentName and Gender.

Query:
SELECT EmployeeName, DepartmentName, Gender
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
JOIN Genders ON Employees.GenderID = Genders.GenderID

Write a query to show the total number of employees by DEPARTMENT and by GENDER.

Query:
SELECT DepartmentName, Gender, COUNT(*) as TotalEmployees
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
JOIN Genders ON Employees.GenderID = Genders.GenderID
GROUP BY DepartmentName, Gender
ORDER BY DepartmentName, Gender

In my opinion this is a very good sql server interview question. Here are the sequence of questions, one of our Youtube channel subscribers faced in a sql server interview.

Question 1: Can you list different types of JOINS available in SQL Server
Answer: Inner Join, Left Join, Right Join, Full Join and Cross Join

Question 2: Can you tell me the purpose of Right Join?
Answer: Right Join returns all rows from the Right Table irrespective of whether a match exists in the left table or not.

Question 3: Can you give me an example?
Answer: Consider Departments and Employees tables.

In this case we use RIGHT JOIN To retrieve all Department and Employee names, irrespective of whether a Department has Employees or not.

Select DepartmentName, EmployeeName
From Employees
Right Join Departments
On Employees.DepartmentID = Departments.DepartmentID

Question 4: I accept you have understood the purpose of Right Join. Based on the above 2 tables, can you give me any other business case for using Right Join.
At this point the candidate being interviewed, had no other answer and he simply told the interviewer he can't think of anything else. The good news is that, inspite of not answering the last question, the candidate got this Job. 

The candidate then emailed me and asked, what do you think that interviewer might be looking for here?
Here is what I think the interviewer is looking for. I may be wrong. If you can think of anything else, please feel free to leave a comment so it could help someone else.

Another business case for using RIGHT JOIN on the above 2 tables is to retrieve all the Department Names and the total number of Employees with in each department.

SQL Query with Right Join
Select DepartmentName, Count(Employees.DepartmentID) as TotalEmployees
From Employees
Right Join Departments
ON Departments.DepartmentID = Employees.DepartmentID
Group By DepartmentName
Order By TotalEmployees

Can we join two tables without primary foreign key relation

Yes, we can join two tables without primary foreign key relation as long as the column values involved in the join can be converted to one type.

ID column in Departments table is not the primary Key and DepartmentId column in Employees table is not the foreign key. But we can still join these tables using ID column from Departments table and DepartmentId column from Employees table, as both the columns involved in the join have same data type i.e int.
Select Employees.Name as EmployeeName, Departments.Name as DepartmentName
from Employees
join Departments on Departments.ID = Employees.DepartmentId

The obious next question is, if primary foreign key relation is not mandatory for 2 tables to be joined then what is the use of these keys?
Primary key enforces uniqueness of values over one or more columns. Since ID is not a primary key in Departments table, 2 or more departments may end up having same ID value, which makes it impossible to distinguish between them based on the ID column value.

Foreign key enforces referential integrity. Without foreign key constraint on DepartmentId column in Employees table, it is possible to insert a row into Employees table with a value for DepartmentId column that does not exist in Departments table.

The following insert statement, successfully inserts a new Employee into Employees table whose DepartmentId is 100. But we don't have a department with ID = 100 in Departments table. This means this employee row is an orphan row, and the referential integrity is lost as result
Insert into Employees values (8, 'Mary', 'Female', 80000, 100)

If we have had a foreign key constraint on DepartmentId column in Employees table, the following insert statement would have failed with the following error.
Msg 547, Level 16, State 0, Line 1
The INSERT statement conflicted with the FOREIGN KEY constraint. The conflict occurred in database "Sample", table "dbo.Departments", column 'ID'.