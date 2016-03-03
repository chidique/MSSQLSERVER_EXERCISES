USE AdventureWorks2014
GO
--SORTING DATA

--1
select BusinessEntityID, LastName, FirstName, MiddleName
from Person.Person
Order by LastName, FirstName, MiddleName;


--2
select BusinessEntityID, MiddleName, FirstName, LastName
from Person.Person
Order by MiddleName,  FirstName, LastName;

--3
select BusinessEntityID, LastName, FirstName, MiddleName
from Person.Person
Order by LastName, FirstName, MiddleName
OFFSET 20 rows
fetch NEXT 10 rows only;