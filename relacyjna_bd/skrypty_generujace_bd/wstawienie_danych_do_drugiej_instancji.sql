SET IDENTITY_INSERT Band ON;
INSERT INTO [dbo].[Band]
           ([bandId], [name])
     VALUES
           (101, 'Oddział zamknięty')
		   GO

SET IDENTITY_INSERT Band OFF;