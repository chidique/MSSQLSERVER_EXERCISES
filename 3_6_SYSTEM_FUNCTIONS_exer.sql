use AdventureWorks2014 
GO

--1
select BusinessEntityID, 
	Case when cast(BusinessEntityID as int)%2 =0 then 'even'
		else 'odd' end as divisionresult
from [HumanResources].[Employee]
	

--1b
select BusinessEntityID, 
	Case when ((convert(int,BusinessEntityID))%2) = 0 then 'even'
		else 'odd' end as divisionresult
from [HumanResources].[Employee]
	


--2
select SalesOrderID, OrderQty, 
	case when OrderQty between 0 and 9 then 'under 10' 
		when OrderQty between 10 and 19 then '10-19' 
		when OrderQty between 20 and 29 then '20-29'
		when OrderQty between 30 and 39 then '30-39'
		 else '40 and over' end
	as "Range"
from [Sales].[SalesOrderDetail];

--3
select Title, FirstName, MiddleName, LastName, Suffix, 
coalesce(' '+Title, '') +' ' + FirstName + coalesce( ' '+ MiddleName,'') +' '+LastName+ coalesce( ' '+Suffix,'') as FullName
from [Person].[Person] ;


--4
select SERVERPROPERTY('Edition') as Edition, SERVERPROPERTY('EditionID') as EditionID,
		SERVERPROPERTY('InstanceName') as InstanceName, SERVERPROPERTY('ServerName') as ServerName;
