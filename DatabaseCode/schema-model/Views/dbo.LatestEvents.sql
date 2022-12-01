SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE   VIEW [dbo].[LatestEvents]
AS
SELECT TOP(10)
 e.EventName,
 e.EventDate,
 e.EventLocation,
 e.CountryCode        
FROM dbo.Event e
INNER JOIN dbo.CountryCodes c ON c.CountryCode = e.CountryCode 
ORDER BY EventDate DESC;
GO
