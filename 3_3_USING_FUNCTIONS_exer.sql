use AdventureWorks2014
GO

--1
select LEFT([AddressLine1],10) as "FIRST 10 XTERS"
from [Person].[Address];

--2
select SUBSTRING([AddressLine1],10,5) as "XTERS 10-15"
from [Person].[Address];


--3
select Upper(lastname) LASTNAME, Upper(firstname) FIRSTNAME
from [Person].[Person];

--4
select SUBSTRING( ProductNumber, Charindex('-', ProductNumber) +1,50) as ProductNumber
from [Production].[Product];