USE AdventureWorks2014;
GO
--#1
Select CustomerID, StoreID, AccountNumber
from Sales.Customer;

--#2
Select Name, ProductNumber, Color
from Production.Product;

--#3
select CustomerID, SalesOrderID
from Sales.SalesOrderHeader;

/*#4
use column names instead of asterisks to optimize performance and reduce demand on network resources, 
it ignores indexes by doing a full table scan, using a where clause introdces a filter that returns only what is neeeded. */
