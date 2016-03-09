use AdventureWorks2014
GO

--1
select SalesOrderID, OrderDate, ShipDate, Datediff(day, OrderDate,ShipDate) as TimeBetween 
from Sales.SalesOrderHeader;

--2
select format(OrderDate,'MM-dd-yyyy') OrderDate, format(ShipDate,'MM-dd-yyyy') ShipDate
from Sales.SalesOrderHeader;

--3
select SalesOrderID, format(OrderDate,'MM-dd-yyyy'), format(DateAdd(MONTH,6, OrderDate), 'MM-dd-yyyy') as Plus6Months
from Sales.SalesOrderHeader;

--4
select SalesOrderID, OrderDate, Year(OrderDate) as "Year", Month(OrderDate) as "Month"
from Sales.SalesOrderHeader;

--5
select SalesOrderID, OrderDate, Year(OrderDate) as "Year", Datename(month,OrderDate) as "Month"
from Sales.SalesOrderHeader;
