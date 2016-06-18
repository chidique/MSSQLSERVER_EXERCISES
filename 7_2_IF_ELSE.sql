use AdventureWorks2014
go


--1
declare @Count int;

select @Count = count(*) 
from Sales.SalesOrderDetail;

if @Count > 100000 Begin
print 'Over 100,000';
end;

ELSE begin 
print '100,000 or less'
end;
 go


--2
if month(getdate()) in (10,11) begin
	print 'The Month is ' + datename(mm,getdate());
	if year(getdate()) % 2 = 0  begin
	print 'The year is even.';
	end

else Begin 
print 'The year is odd.';
end

end;



--3
if exists (select * from Sales.SalesOrderHeader where SalesOrderID =1) Begin
	print 'There is a SalesOrderID =1'
end;
	else begin
	 print 'There is not a SalesOrderID =1'
	end;
	