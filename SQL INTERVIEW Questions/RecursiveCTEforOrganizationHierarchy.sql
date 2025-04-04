/*drop table employees;
Here is the problem definition:
1. Employees table contains the following columns 
    a) EmployeeId, 
    b) EmployeeName 
    c) ManagerId 
2. If an EmployeeId is passed, the query should list down the entire organization hierarchy i.e who is the manager of the EmployeeId passed and who is managers manager and so on till full hierarchy is listed.
For example, 
Scenario 1: If we pass David's EmployeeId to the query, then it should display the organization hierarchy starting from David.
Scenario 2: If we pass Lara's EmployeeId to the query, then it should display the organization hierarchy starting from Lara.
We will be Employees table for this demo. SQL to create and populate Employees table with test data

 constraint FK_ManagerID foreign key (ManagerID) references Employees(EmployeeID)
*/
Create table Employees
(
 EmployeeID int primary key auto_increment,
 EmployeeName nvarchar(50),
 ManagerID int
);
alter table Employees
add constraint FK_ManagerID foreign key (ManagerID) references Employees(EmployeeID);

desc employees;

Insert into Employees(EmployeeName, ManagerID) values ('John', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('Mark', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('Steve', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('Tom', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('Lara', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('Simon', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('David', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('Ben', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('Stacy', NULL);
Insert into Employees(EmployeeName, ManagerID) values ('Sam', NULL);

SET SQL_SAFE_UPDATES = 0;
/* SET SQL_SAFE_UPDATES = 0;
It looks like your MySql session has the safe-updates option set. 
This means that you can't update or delete records without specifying a key (ex. primary key) 
in the where clause.
Step 1: Execute the anchor part and get result R0
Step 2: Execute the recursive member using R0 as input and generate result R1
Step 3: Execute the recursive member using R1 as input and generate result R2
Step 4: Recursion goes on until the recursive member output becomes NULL
Step 5: Finally apply UNION ALL on all the results to produce the final output
*/

Update Employees Set ManagerID = 8 Where EmployeeName IN ('Mark', 'Steve', 'Lara');
Update Employees Set ManagerID = 2 Where EmployeeName IN ('Stacy', 'Simon');
Update Employees Set ManagerID = 3 Where EmployeeName IN ('Tom');
Update Employees Set ManagerID = 5 Where EmployeeName IN ('John', 'Sam');
Update Employees Set ManagerID = 4 Where EmployeeName IN ('David');

Set @ID = 7;

WITH recursive EmployeeCTE AS
(
 Select EmployeeId, EmployeeName, ManagerID
 From Employees
 Where EmployeeId = @ID
 UNION ALL
 Select Employees.EmployeeId , Employees.EmployeeName, Employees.ManagerID
 From Employees
 JOIN EmployeeCTE
 ON Employees.EmployeeId = EmployeeCTE.ManagerID
)
Select E1.EmployeeName, ISNULL(E2.EmployeeName, 'No Boss') as ManagerName
From EmployeeCTE E1
LEFT Join EmployeeCTE E2
ON E1.ManagerID = E2.EmployeeId;