use AdventureWorks2014
GO

--1
select SalesOrderID, SubTotal, round(SubTotal,2)as TwoDecimalPlaces
from Sales.SalesOrderHeader;

--2
select SalesOrderID, SubTotal, round(SubTotal,0)as TwoDecimalPlaces
from Sales.SalesOrderHeader;


--3
select SalesOrderID, sqrt(SalesOrderID) as OrderIdSqrt
from Sales.SalesOrderHeader;


--4
select cast(rand() *10 as int ) + 1 as "1 to 10";

--4b
select convert(int, rand() *10 ) + 1 as "1 to 10";