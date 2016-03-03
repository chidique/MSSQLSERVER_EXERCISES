
--table set up for date and time example


create table #DateTimeExample
(ID int not null identity primary key,
MyDate datetime2(0) not null,
MyValue varchar(25) not null
);

GO

insert into #DateTimeExample
(MyDate, MyValue)
values
('1/2/2009 10:30', 'Bike'),
('1/3/2009 13:00', 'Trike'),
('1/3/2009 13:10', 'Bell'),
('1/3/2009 17:35', 'Seat');



--filtering on date and time

--1 
select ID, MyDate, MyValue
from #DateTimeExample 
where MyDate = '2009-01-03';

--2 
select ID, MyDate, MyValue
from #DateTimeExample 
where MyDate between  '2009-01-03 00:00:00' and '2009-01-03 23:59:59';