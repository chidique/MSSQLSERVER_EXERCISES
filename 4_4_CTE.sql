use AdventureWorks2014 
GO

--1
select soh.SalesOrderID, soh.OrderDate, sod.ProductID
from Sales.SalesOrderHeader as Soh 
inner Join (select  SalesOrderID, ProductID from Sales.salesorderdetail) as Sod
on Soh.SalesOrderID=Sod.SalesOrderID;

--2
with orders as 
	(select  SalesOrderID, ProductID from Sales.salesorderdetail)

select  soh.SalesOrderID, soh.OrderDate, orders.ProductID
from Sales.SalesOrderHeader as Soh 
inner Join orders on Soh.SalesOrderID=orders.SalesOrderID;

--3
with ordertf as 
	(select  SalesOrderID, CustomerID, OrderDate from Sales.SalesOrderHeader 
	  where OrderDate between '01/01/2005' and '12/31/2005')

select  c.CustomerID, ordertf.SalesOrderID, ordertf.OrderDate
from  Sales.Customer as c
left outer Join ordertf on c.CustomerID=ordertf.CustomerID;