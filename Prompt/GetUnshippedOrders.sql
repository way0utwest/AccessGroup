ALTER PROCEDURE dbo.GetUnshippedOrders
AS
    SELECT TOP 10
           OrderID
         , CustomerID
         , EmployeeID
         , OrderDate
         , RequiredDate
         , ShippedDate
    FROM dbo.Orders
    WHERE ShippedDate IS NULL ORDER BY ColumnName
GO




