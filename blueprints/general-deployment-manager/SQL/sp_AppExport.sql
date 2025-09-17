/****** Object:  StoredProcedure [dbo].[sp_AppExport]    Script Date: 8/28/2025 1:23:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_AppExport]
    @Applications VARCHAR(max),
    @DataStreams VARCHAR(max),
    @Recommendations VARCHAR(max),
    @IncludeDependencies bit
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @JsonOutput NVARCHAR(MAX);
    IF (@Applications IS NULL AND @DataStreams IS NULL AND @Recommendations IS NULL)
        RETURN;
    
    WITH SplitData AS (
        SELECT 
            'Applications' AS PropertyName,
            value AS FullValue,
            CHARINDEX(':', value) AS FirstColon,
            CHARINDEX(':', value, CHARINDEX(':', value) + 1) AS SecondColon,
            CHARINDEX(':', value, CHARINDEX(':', value, CHARINDEX(':', value) + 1) + 1) AS ThirdColon,
            LEN(value) - CHARINDEX(':', REVERSE(value)) AS LastColonFromStart
        FROM STRING_SPLIT(@Applications, ',')
        WHERE TRIM(value) != '' AND @Applications IS NOT NULL
        UNION ALL
        SELECT 
            'DataStreams',
            value,
            CHARINDEX(':', value),
            CHARINDEX(':', value, CHARINDEX(':', value) + 1),
            CHARINDEX(':', value, CHARINDEX(':', value, CHARINDEX(':', value) + 1) + 1),
            LEN(value) - CHARINDEX(':', REVERSE(value))
        FROM STRING_SPLIT(@DataStreams, ',')
        WHERE TRIM(value) != '' AND @DataStreams IS NOT NULL
        UNION ALL
        SELECT 
            'Recommendations',
            value,
            CHARINDEX(':', value),
            CHARINDEX(':', value, CHARINDEX(':', value) + 1),
            CHARINDEX(':', value, CHARINDEX(':', value, CHARINDEX(':', value) + 1) + 1),
            LEN(value) - CHARINDEX(':', REVERSE(value))
        FROM STRING_SPLIT(@Recommendations, ',')
        WHERE TRIM(value) != '' AND @Recommendations IS NOT NULL
    ),
    ParsedData AS (
        SELECT 
            PropertyName,
            CAST(SUBSTRING(FullValue, 1, FirstColon - 1) AS BIGINT) AS Id,
            SUBSTRING(FullValue, FirstColon + 1, SecondColon - FirstColon - 1) AS UniversalId,
            CAST(SUBSTRING(FullValue, SecondColon + 1, ThirdColon - SecondColon - 1) AS INT) AS Version,
            SUBSTRING(FullValue, ThirdColon + 1, LastColonFromStart - ThirdColon) AS Name,
            RIGHT(FullValue, CHARINDEX(':', REVERSE(FullValue)) - 1) AS CategoryId
        FROM SplitData
    )
    SELECT @JsonOutput = (
        SELECT 
            JSON_QUERY(ISNULL((
                SELECT Id, UniversalId, Version, Name, CategoryId
                FROM ParsedData 
                WHERE PropertyName = 'Applications' 
                FOR JSON PATH
            ), '[]')) AS Applications,
            JSON_QUERY(ISNULL((
                SELECT Id, UniversalId, Version, Name, CategoryId
                FROM ParsedData 
                WHERE PropertyName = 'DataStreams' 
                FOR JSON PATH
            ), '[]')) AS DataStreams,
            JSON_QUERY(ISNULL((
                SELECT Id, UniversalId, Version, Name, CategoryId
                FROM ParsedData 
                WHERE PropertyName = 'Recommendations' 
                FOR JSON PATH
            ), '[]')) AS Recommendations,
            @IncludeDependencies AS IncludeDependencies
        FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
    );
    SELECT @JsonOutput AS ExportPayload;
END
GO


