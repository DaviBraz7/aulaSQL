SELECT * FROM [Course]
SELECT * FROM [Student]
SELECT * FROM [StudentCourse]


INSERT INTO 
    [Student]
VALUES (
    '6a71e923-2eb6-494c-8c70-7c872ad1f81d',
    'Andre Baltieri',
    'hello@balta.io',
    '12345678901',
    '12345678',
    NULL,
    GETDATE()
)

INSERT into 
    [StudentCourse]
VALUES (
    '5f5a33f8-4ff3-7e10-cc6e-3fa000000000',
    '6a71e923-2eb6-494c-8c70-7c872ad1f81d',
    50,
    0,
    '2020-01-13 12:35:54',
    GETDATE()
)