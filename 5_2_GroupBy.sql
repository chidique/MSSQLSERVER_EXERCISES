use AdventureWorks2014
GO

--1
select ProductID, sum(OrderQty)as TotalOrders
from Sales.SalesOrderDetail
group by ProductID;

--2
select SalesOrderID, count(LineTotal) DetailLines
from Sales.SalesOrderDetail
group by SalesOrderID;

--3
select ProductLine, count(ProductID) as Products
from Production.Product
group by ProductLine;

--4
select CustomerID, count(SalesOrderID) as OrdersPlaced
from Sales.SalesOrderHeader
group by CustomerID;