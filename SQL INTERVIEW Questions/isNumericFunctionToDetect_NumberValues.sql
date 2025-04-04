/*
This is very easy to achieve. 
If you have used ISNUMERIC() function in SQL Server, then you already know the answer.
Here is the query */

Create Table TestTable
(
 ID int primary key auto_increment,
 Value nvarchar(50)
);

Insert into TestTable (value) values ('123');
Insert into TestTable (value) values ('ABC');
Insert into TestTable (value) values ('DEF');
Insert into TestTable (value) values ('901');
Insert into TestTable (value) values ('JKL');

/*detect if value is number in MySQL
select * from TestTable where isANumber(value) = true;
SELECT Value FROM TestTable WHERE ISNUMERIC(Value) = 1 --> in Oracle
*/

select * from TestTable where value regexp '^[0-9]+$';
SELECT * FROM TestTable WHERE concat('',value * 1) = value;