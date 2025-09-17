/* =====================================================================
   EDIT THESE BEFORE RUNNING (do not commit real secrets to source control)
   - Connect directly to the target database (e.g., AD). In Azure SQL DB
     you cannot USE to switch databases.
   - This script does NOT require SQLCMD mode.
   ===================================================================== */
DECLARE @MASTER_KEY_PWD         nvarchar(128)   = N'ChangeMe-StrongMasterKeyPwd!'; -- Must be created here or, if already created, entered here
DECLARE @SQL_SERVER             sysname         = N'ChangeMe-sqldb-xmpro-qav45-ce11cf94.database.windows.net';
DECLARE @DS_DB                  sysname         = N'DS';
DECLARE @SM_DB                  sysname         = N'SM';
DECLARE @DS_CRED_IDENTITY       sysname         = N'ChangeMe-'; -- must be SQL credentialed login
DECLARE @DS_CRED_SECRET         nvarchar(4000)  = N'ChangeMe-DS-Password'; -- must be SQL credentialed password
DECLARE @SM_CRED_IDENTITY       sysname         = N'ChangeMe-xmadmin'; -- must be SQL credentialed login
DECLARE @SM_CRED_SECRET         nvarchar(4000)  = N'ChangeMe-SM-Password'; -- must be SQL credentialed password

-- =====================================================================
-- VALIDATION: Ensure all "ChangeMe" placeholders have been updated
-- =====================================================================

IF @MASTER_KEY_PWD LIKE N'ChangeMe%'
   OR @SQL_SERVER LIKE N'ChangeMe%'
   OR @DS_CRED_IDENTITY LIKE N'ChangeMe%'
   OR @DS_CRED_SECRET LIKE N'ChangeMe%'
   OR @SM_CRED_IDENTITY LIKE N'ChangeMe%'
   OR @SM_CRED_SECRET LIKE N'ChangeMe%'
BEGIN
    PRINT '***ERROR: Script execution halted***';
    PRINT 'One or more variables still contain "ChangeMe" placeholder values.';
    PRINT 'Please update all variables marked with "ChangeMe" before running this script.';
    PRINT '';
    PRINT 'Variables that need to be updated:';
    
    IF @MASTER_KEY_PWD LIKE N'ChangeMe%'
        PRINT '  - @MASTER_KEY_PWD';
    IF @SQL_SERVER LIKE N'ChangeMe%'
        PRINT '  - @SQL_SERVER';
    IF @DS_CRED_IDENTITY LIKE N'ChangeMe%'
        PRINT '  - @DS_CRED_IDENTITY';
    IF @DS_CRED_SECRET LIKE N'ChangeMe%'
        PRINT '  - @DS_CRED_SECRET';
    IF @SM_CRED_IDENTITY LIKE N'ChangeMe%'
        PRINT '  - @SM_CRED_IDENTITY';
    IF @SM_CRED_SECRET LIKE N'ChangeMe%'
        PRINT '  - @SM_CRED_SECRET';
    
    RAISERROR('Script execution stopped: Update all ChangeMe variables first.', 16, 1);
    RETURN;
END

PRINT 'Validation passed: All variables have been updated.';
PRINT '';

-- Safely quote secrets for dynamic SQL
DECLARE @MASTER_KEY_PWD_q nvarchar(256) = REPLACE(@MASTER_KEY_PWD, '''', '''''');
DECLARE @DS_CRED_SECRET_q nvarchar(256) = REPLACE(@DS_CRED_SECRET, '''', '''''');
DECLARE @SM_CRED_SECRET_q nvarchar(256) = REPLACE(@SM_CRED_SECRET, '''', '''''');

SET NOCOUNT ON;

-- Step 1: Create Database Master Key (only once per database)
IF NOT EXISTS (SELECT 1 FROM sys.symmetric_keys WHERE name = '##MS_DatabaseMasterKey##')
BEGIN
    EXEC(N'CREATE MASTER KEY ENCRYPTION BY PASSWORD = ''' + @MASTER_KEY_PWD_q + N'''');
    PRINT 'Database master key created.';
END
ELSE
    PRINT 'Database master key already exists.';

-- Step 2: Database-scoped credentials (create or update)
IF EXISTS (SELECT 1 FROM sys.database_scoped_credentials WHERE name = N'DS_Credential')
BEGIN
    EXEC(N'ALTER DATABASE SCOPED CREDENTIAL DS_Credential
           WITH IDENTITY = ''' + @DS_CRED_IDENTITY + N''',
                SECRET   = ''' + @DS_CRED_SECRET_q + N'''' );
    PRINT 'DS_Credential altered.';
END
ELSE
BEGIN
    EXEC(N'CREATE DATABASE SCOPED CREDENTIAL DS_Credential
           WITH IDENTITY = ''' + @DS_CRED_IDENTITY + N''',
                SECRET   = ''' + @DS_CRED_SECRET_q + N'''' );
    PRINT 'DS_Credential created.';
END

IF EXISTS (SELECT 1 FROM sys.database_scoped_credentials WHERE name = N'SM_Credential')
BEGIN
    EXEC(N'ALTER DATABASE SCOPED CREDENTIAL SM_Credential
           WITH IDENTITY = ''' + @SM_CRED_IDENTITY + N''',
                SECRET   = ''' + @SM_CRED_SECRET_q + N'''' );
    PRINT 'SM_Credential altered.';
END
ELSE
BEGIN
    EXEC(N'CREATE DATABASE SCOPED CREDENTIAL SM_Credential
           WITH IDENTITY = ''' + @SM_CRED_IDENTITY + N''',
                SECRET   = ''' + @SM_CRED_SECRET_q + N'''' );
    PRINT 'SM_Credential created.';
END

-- Step 3: External data sources (create if missing)
IF NOT EXISTS (SELECT 1 FROM sys.external_data_sources WHERE name = N'DS_DataSource')
BEGIN
    EXEC(N'CREATE EXTERNAL DATA SOURCE DS_DataSource
           WITH ( TYPE = RDBMS,
                  LOCATION = ''' + @SQL_SERVER + N''',
                  DATABASE_NAME = ''' + @DS_DB + N''',
                  CREDENTIAL = DS_Credential );');
    PRINT 'DS_DataSource created.';
END
ELSE
    PRINT 'DS_DataSource already exists. To change it, DROP and re-CREATE.';

IF NOT EXISTS (SELECT 1 FROM sys.external_data_sources WHERE name = N'SM_DataSource')
BEGIN
    EXEC(N'CREATE EXTERNAL DATA SOURCE SM_DataSource
           WITH ( TYPE = RDBMS,
                  LOCATION = ''' + @SQL_SERVER + N''',
                  DATABASE_NAME = ''' + @SM_DB + N''',
                  CREDENTIAL = SM_Credential );');
    PRINT 'SM_DataSource created.';
END
ELSE
    PRINT 'SM_DataSource already exists. To change it, DROP and re-CREATE.';

-- Step 4: External tables (create if missing)
IF NOT EXISTS (
    SELECT 1 FROM sys.external_tables
    WHERE name = N'category' AND schema_id = SCHEMA_ID(N'dbo')
)
BEGIN
    EXEC(N'
        CREATE EXTERNAL TABLE dbo.category (
            Id uniqueidentifier,
            Name nvarchar(256),
            Description nvarchar(max),
            Icon nvarchar(max),
            CompanyId bigint,
            [Index] float
        )
        WITH (
            DATA_SOURCE = SM_DataSource,
            SCHEMA_NAME = ''dbo'',
            OBJECT_NAME = ''Category''
        );');
    PRINT 'External table dbo.category created.';
END
ELSE
    PRINT 'External table dbo.category already exists.';

IF NOT EXISTS (
    SELECT 1 FROM sys.external_tables
    WHERE name = N'EdgeContainer' AND schema_id = SCHEMA_ID(N'dbo')
)
BEGIN
    EXEC(N'
        CREATE EXTERNAL TABLE dbo.EdgeContainer (
            Id uniqueidentifier,
            Name nvarchar(512),
            Secret nvarchar(max),
            CompanyId bigint,
            Icon nvarchar(max),
            RemoteReceiver uniqueidentifier,
            RemoteReceiverVersion float,
            RemotePublisher uniqueidentifier,
            RemotePublisherVersion float
        )
        WITH (
            DATA_SOURCE = DS_DataSource,
            SCHEMA_NAME = ''dbo'',
            OBJECT_NAME = ''EdgeContainer''
        );');
    PRINT '' + 'External table dbo.EdgeContainer created.';
END
ELSE
    PRINT 'External table dbo.EdgeContainer already exists.';

-- Usage: if the uncommented select statements return table data, you have successfully executed the script
-- SELECT * FROM dbo.category;
-- SELECT * FROM dbo.EdgeContainer;