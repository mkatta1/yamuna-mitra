/*How to find nth highest salary in SQL Server using a Sub-Query
How to find nth highest salary in SQL Server using a CTE
How to find the 2nd, 3rd or 15th highest salary

To find the highest salary it is straight forward. We can simply use the Max() function as shown below.
Select Max(Salary) from Employees
To get the second highest salary use a sub query along with Max() function as shown below.
Select Max(Salary) from Employees where Salary [ (Select Max(Salary) from Employees)
*/
use kudvenkat;
Create table Employees
(
 ID int primary key AUTO_INCREMENT,
 FirstName nvarchar(50),
 LastName nvarchar(50),
 Gender nvarchar(50),
 Salary int
);

Insert into Employees (FirstName, LastName, Gender, Salary) values ('Ben', 'Hoskins', 'Male', 70000);
Insert into Employees (FirstName, LastName, Gender, Salary) values ('Mark', 'Hastings', 'Male', 60000);
Insert into Employees (FirstName, LastName, Gender, Salary) values ('Steve', 'Pound', 'Male', 45000);
Insert into Employees (FirstName, LastName, Gender, Salary) values ('Ben', 'Hoskins', 'Male', 70000);
Insert into Employees (FirstName, LastName, Gender, Salary) values ('Philip', 'Hastings', 'Male', 45000);
Insert into Employees (FirstName, LastName, Gender, Salary) values ('Mary', 'Lambeth', 'Female', 30000);
Insert into Employees (FirstName, LastName, Gender, Salary) values ('Valarie', 'Vikings', 'Female', 35000);
Insert into Employees (FirstName, LastName, Gender, Salary) values ('John', 'Stanmore', 'Male', 80000);

select * from employees;

SELECT distinct Salary FROM Employees
ORDER BY Salary DESC
limit 5;
      
/*To find nth highest salary using Sub-Query
SELECT TOP 1 SALARY FROM (
      SELECT DISTINCT TOP 5 SALARY FROM EMPLOYEES ORDER BY SALARY DESC ) RESULT
ORDER BY SALARY */

SELECT SALARY
FROM (
      SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC
      LIMIT 5
      ) RESULT
ORDER BY SALARY
LIMIT 1;
/*To find nth highest salary using CTE*/

WITH RESULT AS
(
    SELECT SALARY,
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK
    FROM EMPLOYEES
)
SELECT SALARY
FROM RESULT
WHERE DENSERANK = 4
LIMIT 2;

/*
To find 2nd highest salary we can use any of the above queries. Simple replace N with 2. 
Similarly, to find 3rd highest salary, simple replace N with 3. 
Please Note: On many of the websites, you may have seen that, the following query can be used to get the nth highest salary. The below query will only work if there are no duplicates.
*/

WITH RESULT AS
(
    SELECT SALARY,
           ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROWNUMBER
    FROM EMPLOYEES
)
SELECT SALARY
FROM RESULT
WHERE ROWNUMBER = 3;