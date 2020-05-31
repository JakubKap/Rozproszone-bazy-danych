CREATE PROCEDURE getAllMiltiinstrumentalists AS
SELECT p1.[personId], p1.[name], p1.[surname]
FROM [dbo].[Person] p1
INNER JOIN [dbo].[PersonInstrument] pin1 ON p1.personId=pin1.personId
INNER JOIN [dbo].[Instrument] i1 ON pin1.instrumentId = i1.instrumentId
GROUP BY p1.[personId], p1.[name], p1.[surname]
HAVING COUNT(*) > 1

UNION

SELECT p2.[personId], p2.[name], p2.[surname]
FROM [dbo].[Person2] p2
INNER JOIN [dbo].[PersonInstrument2] pin2 ON p2.personId=pin2.personId
INNER JOIN [dbo].[Instrument2] i2 ON pin2.instrumentId = i2.instrumentId
GROUP BY p2.[personId], p2.[name], p2.[surname]
HAVING COUNT(*) > 1;