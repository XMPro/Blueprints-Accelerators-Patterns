/****** Object:  Trigger [dbo].[TG_AA_MetaTag]    Script Date: 6/3/2024 8:54:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TG_AA_MetaTag]
   ON  [dbo].[AA_MetaTag]
   AFTER INSERT
AS 
BEGIN
	

	INSERT INTO [dbo].[AA_MetaTagLabel]
           ([MetaTag]
           ,[Label]
           ,[IsActive])
     VALUES
           (
		   (SELECT MetaTag From inserted)
           ,'Not Allocated'
           ,1)

END
GO
ALTER TABLE [dbo].[AA_MetaTag] ENABLE TRIGGER [TG_AA_MetaTag]
GO