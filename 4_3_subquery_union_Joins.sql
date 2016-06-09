use AdventureWorks2014
GO

--1
select ProductID, Name
from Production.Product
where ProductID in 
	(select ProductID from Sales.SalesOrderDetail)

--2
select ProductID, Name
from Production.Product
where ProductID not in 
	(select ProductID from Sales.SalesOrderDetail)

--3
IF OBJECT_ID('Production.ProductColor') is not null Begin
	drop table Production.ProductColor;
end

create table Production.ProductColor
	(Color nvarchar(15) not null primary key)
	GO

-- insert most of the existing colors
insert into Production.ProductColor
select distinct Color
from Production.Product
where Color is not null and Color <> 'Silver'
--insert some additional colors
insert into Production.ProductColor
values ('Green'), ('Orange'), ('Purple');


--3b
select Color from Production.ProductColor
where Color not in 
	(select Color from Production.Product where Color is not null);


--4
select distinct Color from Production.Product
where Color not in 
	(select Color from Production.ProductColor where Color is not null);

--5
select ModifiedDate from Person.Person as "Date"
union 
select HireDate from HumanResources.Employee;