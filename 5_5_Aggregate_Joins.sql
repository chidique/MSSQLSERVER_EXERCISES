use AdventureWorks2014
GO

--1
select c.CustomerID as Customer_ID, p.FirstName+' '+p.LastName as Name, count(s.SalesOrderID) as Orders
from Sales.Customer as c inner join Person.Person as p
	on c.CustomerID = p.BusinessEntityID
	inner join Sales.SalesOrderHeader as s on c.CustomerID=s.CustomerID
group by c.CustomerID, p.LastName, p.FirstName
Order by c.CustomerID;


--2
select d.SalesOrderID, h.OrderDate, p.ProductID, count(d.ProductID) as TotalProduct
from Sales.SalesOrderDetail d inner join Production.Product p
	on d.ProductID = p.ProductID 
inner join Sales.SalesOrderHeader h on d.SalesOrderID = h.SalesOrderID
group by d.SalesOrderID, h.OrderDate, p.ProductID
order by d.SalesOrderID, h.OrderDate, p.ProductID;