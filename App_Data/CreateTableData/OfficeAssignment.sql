-- Script Date: 2018/2/4 上午 11:35  - ErikEJ.SqlCeScripting version 3.5.2.74
CREATE TABLE [OfficeAssignment] (
  [InstructorID] int  NOT NULL
, [Location] nvarchar(50)  NULL
);
GO
ALTER TABLE [OfficeAssignment] ADD CONSTRAINT [PK_OfficeAssignment_InstructorID] PRIMARY KEY ([InstructorID]);
GO

-- Script Date: 2018/2/4 上午 11:38  - ErikEJ.SqlCeScripting version 3.5.2.74
INSERT INTO [OfficeAssignment] ([InstructorID],[Location]) VALUES (
16,N'Smith 17');
GO
INSERT INTO [OfficeAssignment] ([InstructorID],[Location]) VALUES (
17,N'Gowan 27');
GO
INSERT INTO [OfficeAssignment] ([InstructorID],[Location]) VALUES (
18,N'Thompson 304');
GO
