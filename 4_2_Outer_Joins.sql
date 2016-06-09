use AdventureWorks2014
GO


--1
select p.productID,p.Name, s.SalesOrderID
from Production.Product as p left outer join Sales.SalesOrderDetail as s
on p.productID = s.productID
order by  s.SalesOrderID;

--2
select p.productID,p.Name, s.SalesOrderID
from Production.Product as p left outer join Sales.SalesOrderDetail as s
on p.productID = s.productID
where  s.SalesOrderID is null ;

--3
select sp.BusinessEntityID, sp.SalesYTD, o.SalesOrderID
from Sales.SalesPerson as sp full outer join Sales.SalesOrderHeader as o
on sp.BusinessEntityID = o.SalesPersonID;

--4
select sp.BusinessEntityID, (p.FirstName+' '+p.MiddleName+' '+p.LastName) as FullName, sp.SalesYTD, o.SalesOrderID
from Sales.SalesPerson as sp full outer join Sales.SalesOrderHeader as o
on sp.BusinessEntityID = o.SalesPersonID
left outer join Person.Person as p on sp.BusinessEntityID = p.BusinessEntityID;


--5
select o.SalesOrderID, c.CurrencyRateID,c.AverageRate, sm.ShipBase
from Sales.SalesOrderHeader as o left outer join Sales.CurrencyRate as c
on o.CurrencyRateID = c.CurrencyRateID
left outer join Purchasing.ShipMethod as sm on o.ShipMethodID =sm.ShipMethodID;

--6
select p.productID, sp.BusinessEntityID
from Production.product as p left join Sales.SalesOrderDetail as sod on p.ProductID = sod.ProductID
left join Sales.SalesOrderHeader soh on sod.SalesOrderID = soh.SalesOrderID
left join Sales.SalesPerson as sp on soh.SalesOrderID = sp.BusinessEntityID;

select ProductID from Production.Product;

