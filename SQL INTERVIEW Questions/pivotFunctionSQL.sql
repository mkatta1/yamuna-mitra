Create Table Countries
(
 Country nvarchar(50),
 City nvarchar(50)
);

Insert into Countries values ('USA','New York');
Insert into Countries values ('USA','Houston');
Insert into Countries values ('USA','Dallas');
Insert into Countries values ('India','Hyderabad');
Insert into Countries values ('India','Bangalore');
Insert into Countries values ('India','New Delhi');
Insert into Countries values ('UK','London');
Insert into Countries values ('UK','Birmingham');
Insert into Countries values ('UK','Manchester');
/*
  Select Country, City,
      convert(varchar(10),row_number() over(partition by Country order by Country)) ColumnSequence
  from Countries;
*/

 Select Country, City1, City2, City3
From
(
  Select Country, City,
    'City'+
      cast(row_number() over(partition by Country order by Country) as varchar(10)) ColumnSequence
  from Countries
) Temp
pivot
(
  max(City)
  for ColumnSequence in (City1, City2, City3)
) Piv;