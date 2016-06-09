use AdventureWorks2014 
GO

--1
select E.BusinessEntityID, E.JobTitle, E.BirthDate, P.FirstName, P.LastName
from HumanResources.Employee as E inner Join Person.Person as P
on E.BusinessEntityID = P.BusinessEntityID;


--2
select C.CustomerID, C.StoreID, C.TerritoryID, P.FirstName, P.LastName
from Person.Person as P inner join Sales.Customer as C
on P.BusinessEntityID = C.PersonID;


--3
select C.CustomerID, C.StoreID, C.TerritoryID, P.FirstName, P.LastName, Soh.SalesOrderID
from Person.Person as P inner join Sales.Customer as C
on P.BusinessEntityID = C.PersonID
inner join Sales.SalesOrderHeader as Soh 
on C.CustomerID = Soh.CustomerID;


--4
select Soh.SalesPersonID, Soh.SalesOrderID, Sp.SalesQuota, Sp.Bonus
from Sales.SalesOrderHeader as Soh inner join Sales.SalesPerson as Sp
on Soh.SalesPersonID = Sp.BusinessEntityID;


--5
select Soh.SalesPersonID, P.FirstName, P.LastName, Soh.SalesOrderID, Sp.SalesQuota, Sp.Bonus
from Sales.SalesOrderHeader as Soh inner join Sales.SalesPerson as Sp
on Soh.SalesPersonID = Sp.BusinessEntityID
inner join Person.Person as P 
on Sp.BusinessEntityID = P.BusinessEntityID;

--6
select Pm.ProductModelID, P.Name, P.Size, P.Color, Pm.CatalogDescription
from Production.ProductModel as Pm inner Join Production.Product as P
on  Pm.ProductModelID =  P.ProductModelID;


--7
--Person.person Per, Sales.customer Cus,Production.products Pr, Sales.salesorderdetail Sod, Sales.SalesOrderHeader Soh
select Per.BusinessEntityID "Customer ID", Per.FirstName, Per.LastName, Pr.Name, Pr.ProductID
from Person.person as Per inner join Sales.customer as Cus on Per.BusinessEntityID = Cus.PersonID
inner join Sales.SalesOrderHeader as Soh on Cus.PersonID = Soh.CustomerID
inner Join Sales.salesorderdetail as Sod on Soh.SalesOrderID=Sod.SalesOrderID
inner Join Production.product as Pr on Sod.ProductID=Pr.ProductID
Order by Per.BusinessEntityID;