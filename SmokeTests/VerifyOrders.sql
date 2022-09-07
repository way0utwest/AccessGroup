/*
Smoke Test - Check Orders

Copyright 2022 Redgate Software
*/
DECLARE @ordercount INT = 0;
SELECT @ordercount = ISNULL(SUM(o.OrderID), 0) FROM dbo.Orders AS o
 WHERE o.OrderDate < GETDATE()

BEGIN
          RAISERROR ('Orders are missing', -- Message text.
                   16, -- Severity.
                   1 -- State.
                   )
END
GO
