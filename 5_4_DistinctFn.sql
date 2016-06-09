use AdventureWorks2014
go

--1
select count(distinct ProductID) as Product_ID from Sales.SalesOrderDetail;

--2
select CustomerID, count(distinct TerritoryID) as Territories
from Sales.SalesOrderHeader
group by CustomerID;
