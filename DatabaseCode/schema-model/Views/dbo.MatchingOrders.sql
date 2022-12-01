SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[MatchingOrders]
AS
SELECT o.OrderID,
       o.CustomerID,
       o.EmployeeID,
       o.OrderDate,
       n.CustomerID AS NorthwindCustomer,
       n.EmployeeID AS NorthwindEmployee,
       n.OrderDate AS NorthwindOrderDate
FROM dbo.Orders o
    INNER JOIN dbo.NorthwindOrders n
        ON n.OrderID = o.OrderID;
GO
