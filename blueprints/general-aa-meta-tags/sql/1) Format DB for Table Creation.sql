DROP TRIGGER IF EXISTS [dbo].[TG_AA_MetaTag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AA_MetaTagLabel]') AND type in (N'U'))
ALTER TABLE [dbo].[AA_MetaTagLabel] DROP CONSTRAINT IF EXISTS [FK_AA_MetaTagLabel_MetaTag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AA_AssetMetaTagMapping]') AND type in (N'U'))
ALTER TABLE [dbo].[AA_AssetMetaTagMapping] DROP CONSTRAINT IF EXISTS [FK_AA_AssetMetaTagMapping_MetaTagLabel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AA_AssetMetaTagMapping]') AND type in (N'U'))
ALTER TABLE [dbo].[AA_AssetMetaTagMapping] DROP CONSTRAINT IF EXISTS [FK_AA_AssetMetaTagMapping_Asset]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AA_MetaTagLabel]') AND type in (N'U'))
ALTER TABLE [dbo].[AA_MetaTagLabel] DROP CONSTRAINT IF EXISTS [DF_AA_MetaTagLabel_isActive]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AA_AssetMetaTagMapping]') AND type in (N'U'))
ALTER TABLE [dbo].[AA_AssetMetaTagMapping] DROP CONSTRAINT IF EXISTS [DF_AA_AssetMetaTagMapping_isActive]
GO
