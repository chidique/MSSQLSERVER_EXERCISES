use AdventureWorks2014
GO

--1
select P.BusinessEntityID, P.FirstName, P.LastName, HRE.HireDate,  HRE.JobTitle, TotalJobTitle
from Person.Person as P
inner join(select BusinessEntityID, HireDate, JobTitle, Count(JobTitle) as TotalJobTitle
	 from HumanResources.Employee Group by  BusinessEntityID, HireDate,JobTitle) as HRE on
P.BusinessEntityID =  HRE.BusinessEntityID
order by BusinessEntityID;

--2

