use AdventureWorks2014
GO

--1
select SpecialOfferID, Description, (MaxQty-MinQty) as QtyDiff
from Sales.SpecialOffer;

--2
select SpecialOfferID, Description, (DiscountPct*MinQty) as MinQtyDisc
from Sales.SpecialOffer;