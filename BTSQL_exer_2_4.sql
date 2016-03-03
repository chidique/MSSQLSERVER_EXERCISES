use AdventureWorks2014
GO

--1
select SalesOrderID, OrderDate, TotalDue
from Sales.SalesOrderHeader 
where TotalDue > 1000 and (OrderDate > '08/31/2005' and OrderDate < '10/01/2005');

--2a
select SalesOrderID, OrderDate, TotalDue
from Sales.SalesOrderHeader 
where TotalDue > 1000 and (OrderDate > '08/31/2005' and OrderDate < '09/04/2005');

--2b
select SalesOrderID, OrderDate, TotalDue
from Sales.SalesOrderHeader 
where TotalDue > 1000 and (OrderDate between '09/01/2005' and '09/03/2005');

--2c
select SalesOrderID, OrderDate, TotalDue
from Sales.SalesOrderHeader 
where TotalDue > 1000 and OrderDate in ('09/01/2005', '09/02/2005', '09/03/2005 ');

--3a
select SalesOrderID, OrderDate, TotalDue, SalesPersonID, TerritoryID
from Sales.SalesOrderHeader 
where TotalDue > 1000 and (SalesPersonID=279 or TerritoryID=6);

--3b
select SalesOrderID, OrderDate, TotalDue, SalesPersonID, TerritoryID
from Sales.SalesOrderHeader 
where(SalesPersonID=279 or TerritoryID=6) and  TotalDue > 1000;

--4
select SalesOrderID, OrderDate, TotalDue, SalesPersonID, TerritoryID
from Sales.SalesOrderHeader 
where TotalDue > 1000 and (SalesPersonID=279 or TerritoryID in (4,6));