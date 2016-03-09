use AdventureWorks2014
Go

--1a
select Name from Production.Product
where Name like 'B%';

--1b
select Name from Production.Product
where CHARINDEX('B', Name) = 1;

--2a

select LastName from Person.Person
where LastName like '%i%';

--2b
select LastName from Person.Person
where CHARINDEX('i', LastName) >0;

