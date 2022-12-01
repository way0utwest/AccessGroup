SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[OrderSubTotalsByOrder]
AS
SELECT od.OrderID, 
    SUM(CONVERT(money,(od.UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM [Order Details] od
GROUP BY od.OrderID
GO
