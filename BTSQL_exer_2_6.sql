use AdventureWorks2014
GO

--1
select ProductID, Comments
from Production.ProductReview
where contains(Comments, 'socks');

--2
select FileName,Title 
from Production.Document
where contains(*, 'reflector');


--3
select FileName,Title 
from Production.Document
where contains(*, 'reflector AND NOT seat');


