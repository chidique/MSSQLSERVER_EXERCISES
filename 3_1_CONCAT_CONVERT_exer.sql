use AdventureWorks2014
GO

--CONCATENATING AND CONVERTING STRINGS

--1a
select AddressLine1+', '+City+' '+PostalCode
as " AddressLine1 (CityPostalCode)"
from Person.Address;

--1b
select concat(AddressLine1+', ', City+' ', PostalCode)
as " AddressLine1 (CityPostalCode)"
from Person.Address;

--2a
SELECT ProductID, isnull(Color, 'No Color') as Color, Name
from Production.Product;


--2b
SELECT ProductID, coalesce(Color, 'No Color') as Color, Name
from Production.Product;

--3a
SELECT ProductID,  Name +': '+coalesce(Color, 'No Color') as "Name:Color"
from Production.Product;


--3b
SELECT ProductID,  Name +': '+isnull(Color, 'No Color') as "Name:Color"
from Production.Product;

--4a
SELECT cast(ProductID as nvarchar) + Name  as "ProductID:Name"
from Production.Product;

--4b
SELECT convert (nvarchar, ProductID) + Name  as "ProductID:Name"
from Production.Product;