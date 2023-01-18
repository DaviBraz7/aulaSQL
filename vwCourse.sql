CREATE or ALTER VIEW vwCourse as

    SELECT 
        [Course].[Id],
        [Course].[Tag],
        [Course].[Title],
        [Course].[Url],
        [Course].[Summary],
        [Course].[CreateDate],
        [Category].[Title] as [Category],
        [Author].[Name] as [Author]
    FROM
        [Course]
        INNER JOIN [Category] ON [Course].[CategoryId] = [Category].[Id]
        INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]
    WHERE
        [Active] = 1