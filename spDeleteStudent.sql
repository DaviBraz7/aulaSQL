CREATE or ALTER PROCEDURE spDeleteStudent (
    @StudentId UNIQUEIDENTIFIER
)
AS
    BEGIN TRANSACTION
        delete from 
            [StudentCourse]
        WHERE
            [StudentId] = @StudentId

        DELETE from 
            [Student]
        WHERE
            [Id] = @StudentId
    COMMIT