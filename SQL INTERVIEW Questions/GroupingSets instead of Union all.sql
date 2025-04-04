/*In oracle syntax
select hiredate, gender, sum(salary) totalsalary
from employees
group by grouping 
( (hiredate, gender), (hiredate), (gender));
*/

select hiredate, gender, sum(salary) totalsalary,  grouping (hiredate), grouping (gender)
from employees
group by HireDate, gender
with rollup;
 
We want to calculate Sum of Salary by Country and Gender. 

We can very easily achieve this using a Group By query as shown below
Select Country, Gender, Sum(Salary) as TotalSalary
From Employees  
Group By Country, Gender

Within the same result set we also want Sum of Salary just by Country. 

To achieve the above result we could combine 2 Group By queries using UNION ALL as shown below.
Select Country, Gender, Sum(Salary) as TotalSalary
From Employees  
Group By Country, Gender

UNION ALL

Select Country, NULL, Sum(Salary) as TotalSalary
From Employees  
Group By Country

Within the same result set we also want Sum of Salary just by Gender. 

We can achieve this by combining 3 Group By queries using UNION ALL as shown below
Select Country, Gender, Sum(Salary) as TotalSalary
From Employees  
Group By Country, Gender

UNION ALL

Select Country, NULL, Sum(Salary) as TotalSalary
From Employees  
Group By Country

UNION ALL

Select NULL, Gender, Sum(Salary) as TotalSalary
From Employees  
Group By Gender

Finally we also want the grand total of Salary. In this case we are not grouping on any particular column. So both Country and Gender columns will be NULL in the resultset.

To achieve this we will have to combine the fourth query using UNION ALL as shown below. 
Select Country, Gender, Sum(Salary) as TotalSalary
From Employees  
Group By Country, Gender

UNION ALL

Select Country, NULL, Sum(Salary) as TotalSalary
From Employees  
Group By Country

UNION ALL

Select NULL, Gender, Sum(Salary) as TotalSalary
From Employees  
Group By Gender

UNION ALL

Select NULL, NULL, Sum(Salary) as TotalSalary
From Employees 

There are 2 problems with the above approach.
The query is huge as we have combined different Group By queries using UNION ALL operator. This can grow even more if we start to add more groups
The Employees table has to be accessed 4 times, once for every query.

If we use Grouping Sets feature introduced in SQL Server 2008, the amount of T-SQL code that you have to write will be greatly reduced. The following Grouping Sets query produce the same result as the above UNION ALL query.

Select Country, Gender, Sum(Salary) TotalSalary
From Employees 
Group BY 
      GROUPING SETS 
      ( 
            (Country, Gender), -- Sum of Salary by Country and Gender
            (Country),   -- Sum of Salary by Country
            (Gender) ,   -- Sum of Salary by Gender
            ()     -- Grand Total
      )

The order of the rows in the result set is not the same as in the case of UNION ALL query. To control the order use order by as shown below.
Select Country, Gender, Sum(Salary) TotalSalary
From Employees 
Group BY 
      GROUPING SETS 
      ( 
            (Country, Gender), -- Sum of Salary by Country and Gender
            (Country),   -- Sum of Salary by Country
            (Gender) ,   -- Sum of Salary by Gender
            ()     -- Grand Total
      )
Order By Grouping(Country), Grouping(Gender), Gender