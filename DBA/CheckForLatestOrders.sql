-- get last 20 orders
select TOP 10 
	*
 FROM dbo.Orders AS o
 ORDER BY o.OrderDate DESC
GO
-- check specific orders
DECLARE @orderid INT = 10745

SELECT 
  o.OrderID
, c.CompanyName
, c.ContactName
, e.FirstName + e.LastName AS Employee
, o.OrderDate
, o.RequiredDate
, o.ShippedDate
, o.ShipName
 FROM dbo.Orders AS o
 INNER JOIN dbo.Customers AS c
 ON c.CustomerID = o.CustomerID
 INNER JOIN dbo.Employees AS e
 ON e.EmployeeID = o.EmployeeID
 WHERE o.OrderID = @orderid
GO

-- find orders with no line items
SELECT o.orderid
 FROM dbo.Orders AS o
 LEFT OUTER JOIN dbo.[Order Details] AS od
 ON od.OrderID = o.OrderID
 WHERE od.OrderID IS null