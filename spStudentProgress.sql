CREATE or ALTER PROCEDURE spStudentProgress(
    @StudentId UNIQUEIDENTIFIER
)
AS
    SELECT
        [Student].[Name] as [Student],
        [Course].[Title] as [Course],
        [StudentCourse].[Progress],
        [StudentCourse].[LastUpdateDate]

    FROM
        [StudentCourse]
        INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
        INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
    WHERE
        [StudentCourse].[StudentId] = @StudentId
        AND [StudentCourse].[Progress] < 100
        AND [StudentCourse].[Progress] > 0
    ORDER BY
        [StudentCourse].[LastUpdateDate] DESC