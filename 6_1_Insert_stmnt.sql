use AdventureWorks2014
go

--3 
INSERT INTO demoSalesOrderHeader
           ([SalesOrderID]
           ,[OrderDate]
           ,[CustomerID]
           ,[SubTotal]
           ,[TaxAmt]
           ,[Freight], SalesNumber)

select [SalesOrderID],[OrderDate]
           ,[CustomerID]
           ,[SubTotal]
           ,[TaxAmt]
           ,[Freight], SalesOrderNumber
from Sales.SalesOrderHeader;  


     VALUES
           (<SalesOrderID, int,>
           ,<OrderDate, datetime,>
           ,<CustomerID, int,>
           ,<SubTotal, money,>
           ,<TaxAmt, money,>
           ,<Freight, money,>
           ,<DateEntered, datetime,>
           ,<SalesNumber, int,>)
GO


