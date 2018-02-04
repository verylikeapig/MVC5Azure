-- Script Date: 2018/2/4 上午 11:35  - ErikEJ.SqlCeScripting version 3.5.2.74
CREATE TABLE [Course] (
  [CourseID] int  NOT NULL
, [Title] nvarchar(50)  NULL
, [Credits] int  NOT NULL
, [DepartmentID] int DEFAULT 1  NOT NULL
);
GO
ALTER TABLE [Course] ADD CONSTRAINT [PK_Course_CourseID] PRIMARY KEY ([CourseID]);
GO
ALTER TABLE [Course] ADD CONSTRAINT [FK_Course_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [Department]([DepartmentID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Script Date: 2018/2/4 上午 11:47  - ErikEJ.SqlCeScripting version 3.5.2.74
INSERT INTO [Course] ([CourseID],[Title],[Credits],[DepartmentID]) VALUES (
1045,N'Calculus',4,3);
GO
INSERT INTO [Course] ([CourseID],[Title],[Credits],[DepartmentID]) VALUES (
1050,N'Chemistry',3,4);
GO
INSERT INTO [Course] ([CourseID],[Title],[Credits],[DepartmentID]) VALUES (
2021,N'Composition',3,2);
GO
INSERT INTO [Course] ([CourseID],[Title],[Credits],[DepartmentID]) VALUES (
2042,N'Literature',4,2);
GO
INSERT INTO [Course] ([CourseID],[Title],[Credits],[DepartmentID]) VALUES (
3141,N'Trigonometry',4,3);
GO
INSERT INTO [Course] ([CourseID],[Title],[Credits],[DepartmentID]) VALUES (
4022,N'Microeconomics',3,5);
GO
INSERT INTO [Course] ([CourseID],[Title],[Credits],[DepartmentID]) VALUES (
4041,N'Macroeconomics',3,5);
GO
