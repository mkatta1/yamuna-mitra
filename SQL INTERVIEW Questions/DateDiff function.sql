drop table employees;

Create table Employees
(
     ID int primary key auto_increment,
     FirstName nvarchar(50),
     LastName nvarchar(50),
     Gender nvarchar(50),
     Salary int,
     HireDate Date
);

Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Ben','Hoskins','Male',70000,'2014-4-5');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Philip','Hastings','Male',45000,'2014-3-11');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Mary','Lambeth','Female',30000,'2014-3-10');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Valarie','Vikings','Female',35000,'2014-2-9');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('John','Stanmore','Male',80000,'2014-2-22');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Able','Edward','Male',5000,'2014-1-22');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Emma','Nan','Female',5000,'2014-1-14');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Jd','Nosin','Male',6000,'2013-1-10');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Todd','Heir','Male',7000,'2013-2-14');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('San','Hughes','Male',7000,'2013-3-15');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Nico','Night','Male',6500,'2013-4-19');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Martin','Jany','Male',5500,'2013-5-23');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Mathew','Mann','Male',4500,'2013-6-23');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Baker','Barn','Male',3500,'2013-7-23');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Mosin','Barn','Male',8500,'2013-8-21');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Rachel','Aril','Female',6500,'2013-9-14');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Pameela','Son','Female',4500,'2013-10-14');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Thomas','Cook','Male',3500,'2013-11-14');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Malik','Md','Male',6500,'2013-12-14');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Josh','Anderson','Male',4900,'2014-5-1');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Geek','Ging','Male',2600,'2014-4-1');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Sony','Sony','Male',2900,'2014-4-30');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Aziz','Sk','Male',3800,'2014-3-1');
Insert into Employees (FirstName, LastName, Gender, Salary, HireDate) values ('Amit','Naru','Male',3100,'2014-3-31');

SELECT
  CONCAT(first_name, ' ', last_name) AS full_name,
  HireDate,
  PERIOD_DIFF
    (
    EXTRACT(YEAR_MONTH FROM CURRENT_DATE), 
    EXTRACT(YEAR_MONTH FROM HireDate)
    ) 
      AS months_diff
FROM employees;



select datediff(HireDate, curdate(), month) from employees;

select * from employees where datediff(month, HireDate, curdate())/12 between 1 and 5;