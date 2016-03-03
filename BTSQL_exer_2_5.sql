use AdventureWorks2014
GO

--1
select ProductID, Name, Color
from Production.Product 
where Color is null;

--2
select ProductID, Name, Color
from Production.Product 
where Color !='Blue' or Color is null;

--3
select ProductID, Name, Color, Style, Size
from Production.Product 
where Style is not null or Color is not null  or Size is not null;
