SET IDENTITY_INSERT Band ON;

INSERT INTO [dbo].[Band]
           ([bandId], [name])
     VALUES
           (1, 'Lady Pank'),
		   (2, 'Perfect');
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
           (1 ,'Janusz','Panasewicz' ,1 ,1),
           (2 ,'Jan','Borysewicz' ,0 ,1);
GO

SET IDENTITY_INSERT Person OFF;

INSERT INTO [dbo].[Instrument]
           (instrumentId
		   ,[name]
           ,[howLongPersonPlays])
     VALUES
           (1
		   ,'Gitara elektryczna'
           ,30);
GO

SET IDENTITY_INSERT Instrument OFF;


INSERT INTO [dbo].[PersonInstrument]
           ([personId]
           ,[instrumentId])
     VALUES
           (2
           ,1);
		   
		   SET IDENTITY_INSERT Album ON;

INSERT INTO [dbo].[Album]
           (albumId
		   ,[name]
           ,[releasedDate]
           ,[bandId])
     VALUES
           (1
		   ,'Lady Pank'
           ,'1979-01-01'
           ,1);
GO

SET IDENTITY_INSERT Album OFF;


SET IDENTITY_INSERT Track ON;

INSERT INTO [dbo].[Track]
           (trackId
		   ,[name]
           ,[length]
           ,[albumId])
     VALUES
           (1
		   ,'Kryzysowa narzeczona'
          ,180
           ,1),
		   (2
		   ,'Mniej niż zero'
          ,185
           ,1);
GO


SET IDENTITY_INSERT Track OFF;


