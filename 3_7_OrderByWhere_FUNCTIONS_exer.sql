use AdventureWorks2014
GO

--1
select SalesOrderID, OrderDate
from Sales.SalesOrderHeader
where Year(OrderDate) = 2011;

--2
select SalesOrderID, OrderDate
from Sales.SalesOrderHeader
order by Month(OrderDate), Year(OrderDate);

--3
select  LastName, FirstName, PersonType,
	Case  when PersonType in ('IN', 'SP', 'SC') then LastName 
	else FirstName end as  "Name"
from [Person].[Person]
order by LastName, FirstName;