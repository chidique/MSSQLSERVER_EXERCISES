use AdventureWorks2014
GO

--1
select SalesOrderID, count(SalesOrderDetailID) as DetailLines
from Sales.SalesOrderDetail
group by SalesOrderID
having count(SalesOrderDetailID) > 3;

--2
select SalesOrderID, sum(LineTotal) as LINETOTAL
from Sales.SalesOrderDetail
group by SalesOrderID
having sum(LineTotal) > 1000;

--3
select ProductModelID, count(ProductModelID) as SingleModels
from Production.Product
group by ProductModelID
having count(ProductModelID) = 1;

--4
select ProductModelID, Color, count(ProductModelID) as SingleModels
from Production.Product
where Color ='blue' or Color = 'red'
group by ProductModelID, Color
having count(ProductModelID) = 1;



