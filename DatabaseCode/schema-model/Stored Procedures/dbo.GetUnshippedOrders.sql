SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[GetUnshippedOrders]
as
select OrderID
     , CustomerID
     , EmployeeID
     , OrderDate
     , RequiredDate
     , ShippedDate
from dbo.Orders
where ShippedDate is null;
GO
