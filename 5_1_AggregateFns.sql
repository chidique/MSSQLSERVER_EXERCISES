use AdventureWorks2014
GO

--1
SELECT COUNT(CustomerID) as Customers FROM Sales.Customer;

--2
select sum(OrderQty) as OrderTotal from Sales.SalesOrderDetail;

--3
select max(UnitPrice) as MaxPrice from Sales.SalesOrderDetail;

--4
select avg(Freight) as AvgFreight from Sales.SalesOrderHeader;

--5
select 
Min(ListPrice) as MinListPrice,
Max(ListPrice) as MaxListPrice,
Avg(ListPrice) as AvgListPrice
from Production.Product;
