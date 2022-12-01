/*

Requirement:
We want to add a BackOrdered flag to orders. This allows us to quickly determine when
an order can't be completed.

*/

-- ata

-- What does this change require us to work on?
-- Dependency Tracker
-- Picklist based on Orders
-- Use Search

-- Skip to GetShippedOrder
-- ap getun
-- add top 10
-- code analysis issues
-- format
alter procedure dbo.GetUnshippedOrders
as
select OrderID
     , CustomerID
     , EmployeeID
     , OrderDate
     , RequiredDate
     , ShippedDate
from dbo.Orders
where ShippedDate is null;
go


-- run code

-- fix snippet atac
/*
ALTER TABLE $table_name$ ALTER COLUMN $columnname$  not null
GO
*/