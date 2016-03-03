use AdventureWorks2014 
GO

--1
select ProductID, Name
from Production.Product
where name like 'Chain%';

--2
select ProductID, Name
from Production.Product
where name like 'Paint%';

--3
select ProductID, Name
from Production.Product
where name not like 'Paint%';

--4
select BusinessEntityID, FirstName, MiddleName, LastName
from Person.Person
where MiddleName = 'E' or MiddleName = 'B';
 

 --5 variation of (4)
select BusinessEntityID, FirstName, MiddleName, LastName
from Person.Person
where MiddleName in ('E','B');
