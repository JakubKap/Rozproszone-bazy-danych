CREATE PROCEDURE getAllBandsWithoutAlbum AS
SELECT b1.[bandId], b1.[name] FROM [dbo].[Band] b1
LEFT JOIN [dbo].[Album] a1 ON b1.bandId = a1.bandId
WHERE a1.bandId IS NULL

UNION

SELECT b2.[bandId], b2.[name] FROM [dbo].[Band2] b2 
LEFT JOIN [dbo].[Album2] a2 ON b2.bandId = a2.bandId
WHERE a2.bandId IS NULL;