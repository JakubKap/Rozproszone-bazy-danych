SET IDENTITY_INSERT Band ON;

INSERT INTO [dbo].[Band]
           ([bandId], [name])
     VALUES
           (101, 'Oddział zamknięty')
GO

SET IDENTITY_INSERT Band OFF;


SET IDENTITY_INSERT Person ON;

INSERT INTO [dbo].[Person]
           ([personId]
		   ,[name]
           ,[surname]
           ,[isVocalist]
           ,[bandId])
     VALUES
           (101 ,'Krzysztof','Jaryczewski' ,1 ,101),
           (102 ,'Wojciech','Pogorzelski' ,0 ,101);
GO

SET IDENTITY_INSERT Person OFF;

SET IDENTITY_INSERT Instrument ON;

INSERT INTO [dbo].[Instrument]
           (instrumentId
		   ,[name]
           ,[howLongPersonPlays])
     VALUES
           (101
		   ,'Gitara akustyczna'
           ,30),
		    (102
		   ,'Pianino'
           ,32),
		   (103
		   ,'Gitara elektryczna'
           ,30);
GO

SET IDENTITY_INSERT Instrument OFF;


INSERT INTO [dbo].[PersonInstrument]
           ([personId]
           ,[instrumentId])
     VALUES
           (102
           ,101),
		   (102
           ,102)
		   ,(102
           ,103);
		   
SET IDENTITY_INSERT Album ON;

INSERT INTO [dbo].[Album]
           (albumId
		   ,[name]
           ,[releasedDate]
           ,[bandId])
     VALUES
           (101
		   ,'Terapia'
           ,'1993-12-12'
           ,101);
GO

SET IDENTITY_INSERT Album OFF;


SET IDENTITY_INSERT Track ON;

INSERT INTO [dbo].[Track]
           (trackId
		   ,[name]
           ,[length]
           ,[albumId])
     VALUES
           (101
		   ,'Ten was świat'
          ,180
           ,101),
		   (102
		   ,'Gdyby nie ty'
          ,185
           ,101);
GO


SET IDENTITY_INSERT Track OFF;

