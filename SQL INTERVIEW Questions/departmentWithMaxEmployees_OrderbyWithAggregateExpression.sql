/*Scenario asked in the SQL Server Interview
Based on the above two tables write a SQL Query to get the name of the Department that has got the maximum number of Employees. 
To answer this question it will be helpful if you the knowledge of JOINS & GROUP BY in SQL Server.
We discusses these in Parts 11 & 12 of SQL Server Tutorial video series. 
SQL query that retrieves the department name with maximum number of employees
*/

SELECT DepartmentName
FROM Employees
JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY DepartmentName
ORDER BY COUNT(*) DESC
LIMIT 1;

/*
Scenario asked in the SQL Server Interview
Based on the above two tables write a SQL Query to get the name of the Department that has got the maximum number of Employees. To answer this question it will be helpful if you the knowledge of JOINS & GROUP BY in SQL Server. We discusses these in Parts 11 & 12 of SQL Server Tutorial video series. 
SQL query that retrieves the department name with maximum number of employees
*/

SELECT DepartmentName
FROM Employees
JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY DepartmentName
ORDER BY COUNT(*) DESC
LIMIT 1;