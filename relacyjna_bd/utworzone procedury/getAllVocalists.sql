CREATE PROCEDURE getAllVocalists AS
SELECT p1.[personId], p1.[name], p1.[surname] 
FROM [dbo].[Person] p1
WHERE p1.isVocalist = 1

UNION 

SELECT p2.[personId], p2.[name], p2.[surname] 
FROM [dbo].[Person2] p2
WHERE p2.isVocalist = 1;