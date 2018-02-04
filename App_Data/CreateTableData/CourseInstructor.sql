-- Script Date: 2018/2/4 上午 11:35  - ErikEJ.SqlCeScripting version 3.5.2.74
CREATE TABLE [CourseInstructor] (
  [CourseID] int  NOT NULL
, [InstructorID] int  NOT NULL
);
GO
ALTER TABLE [CourseInstructor] ADD CONSTRAINT [PK_CourseInstructor_CourseID_InstructorID] PRIMARY KEY ([CourseID],[InstructorID]);
GO
ALTER TABLE [CourseInstructor] ADD CONSTRAINT [FK_CourseInstructor_Course] FOREIGN KEY ([CourseID]) REFERENCES [Course]([CourseID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Script Date: 2018/2/4 上午 11:46  - ErikEJ.SqlCeScripting version 3.5.2.74
INSERT INTO [CourseInstructor] ([CourseID],[InstructorID]) VALUES (
1045,16);
GO
INSERT INTO [CourseInstructor] ([CourseID],[InstructorID]) VALUES (
1050,17);
GO
INSERT INTO [CourseInstructor] ([CourseID],[InstructorID]) VALUES (
1050,18);
GO
INSERT INTO [CourseInstructor] ([CourseID],[InstructorID]) VALUES (
2021,9);
GO
INSERT INTO [CourseInstructor] ([CourseID],[InstructorID]) VALUES (
2042,9);
GO
INSERT INTO [CourseInstructor] ([CourseID],[InstructorID]) VALUES (
3141,17);
GO
INSERT INTO [CourseInstructor] ([CourseID],[InstructorID]) VALUES (
4022,19);
GO
INSERT INTO [CourseInstructor] ([CourseID],[InstructorID]) VALUES (
4041,19);
GO
