use AdventureWorks2014
go

--1
declare @myInt INT = 10
print @myInt;


--2
declare @myString varchar(20)
set @myString = 'This is a test'
print @myString;


--3
declare @MaxID int, @MinID int;
select @MaxID = max(SalesOrderID),  @MinID = min(SalesOrderID)
from Sales.SalesOrderHeader
Print 'The highest values is ' + convert(varchar,@MaxID);
Print 'The lowest values is ' + convert(varchar,@MinID);


--4
declare @ID int 
set @ID = 70000;

select * from Sales.SalesOrderHeader
where SalesOrderID > cast(@ID as nvarchar);
go

--5
declare @ID int, @FirstName nvarchar(50), @LastName nvarchar(50);

select @ID = BusinessEntityID, @FirstName = FirstName, @LastName = LastName
from Person.Person 
where BusinessEntityID =1
print convert(varchar, @ID)+': ' +@FirstName+ ' ' + @LastName;

--6
declare @SalesCount int;

select @SalesCount = count(*) from Sales.SalesOrderHeader;
select CustomerID, @SalesCount - count(CustomerID) as CountDiff
from Sales.SalesOrderHeader
group by CustomerID;