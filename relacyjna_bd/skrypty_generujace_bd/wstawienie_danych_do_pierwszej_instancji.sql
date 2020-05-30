SET IDENTITY_INSERT Band ON;
INSERT INTO [dbo].[Band]
           ([bandId], [name])
     VALUES
           (1, 'Lady Pank'),
		   (2, 'Perfect')
GO

SET IDENTITY_INSERT Band OFF;