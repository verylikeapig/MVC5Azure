-- Script Date: 2018/2/4 上午 11:35  - ErikEJ.SqlCeScripting version 3.5.2.74
CREATE TABLE [Enrollment] (
  [EnrollmentID] int IDENTITY (1,1)  NOT NULL
, [CourseID] int  NOT NULL
, [StudentID] int  NOT NULL
, [Grade] int  NULL
);
GO
ALTER TABLE [Enrollment] ADD CONSTRAINT [PK_Enrollment_EnrollmentID] PRIMARY KEY ([EnrollmentID]);
GO
ALTER TABLE [Enrollment] ADD CONSTRAINT [FK_Enrollment_Course] FOREIGN KEY ([CourseID]) REFERENCES [Course]([CourseID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [Enrollment] ADD CONSTRAINT [FK_Enrollment_Person] FOREIGN KEY ([StudentID]) REFERENCES [Person]([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Script Date: 2018/2/4 上午 11:40  - ErikEJ.SqlCeScripting version 3.5.2.74
SET IDENTITY_INSERT [Enrollment] ON;
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
1,1050,1,0);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
2,4022,1,2);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
3,4041,1,1);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
4,1045,2,1);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
5,3141,2,1);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
6,2021,2,1);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
7,1050,3,NULL);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
8,4022,3,1);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
9,1050,4,1);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
10,2021,5,1);
GO
INSERT INTO [Enrollment] ([EnrollmentID],[CourseID],[StudentID],[Grade]) VALUES (
11,2042,6,1);
GO
SET IDENTITY_INSERT [Enrollment] OFF;
GO
ALTER TABLE [Enrollment] ALTER COLUMN [EnrollmentID] IDENTITY(12,1) --IDENTITY (1,1);
GO
