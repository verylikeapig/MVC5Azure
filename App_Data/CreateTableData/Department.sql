-- Script Date: 2018/2/4 上午 11:35  - ErikEJ.SqlCeScripting version 3.5.2.74
CREATE TABLE [Department] (
  [DepartmentID] int IDENTITY (1,1)  NOT NULL
, [Name] nvarchar(50)  NULL
, [Budget] money NOT NULL
, [StartDate] datetime NOT NULL
, [InstructorID] int  NULL
, [RowVersion] rowversion NOT NULL
);
GO
ALTER TABLE [Department] ADD CONSTRAINT [PK_Department_DepartmentID] PRIMARY KEY ([DepartmentID]);
GO

-- Script Date: 2018/2/4 上午 11:42  - ErikEJ.SqlCeScripting version 3.5.2.74
SET IDENTITY_INSERT [Department] ON;
GO
INSERT INTO [Department] ([DepartmentID],[Name],[Budget],[StartDate],[InstructorID]) VALUES (
2,N'English',350000,{ts '2007-09-07 00:00:00.000'},9);
GO
INSERT INTO [Department] ([DepartmentID],[Name],[Budget],[StartDate],[InstructorID]) VALUES (
3,N'Mathematics',100000,{ts '2007-09-07 00:00:00.000'},16);
GO
INSERT INTO [Department] ([DepartmentID],[Name],[Budget],[StartDate],[InstructorID]) VALUES (
4,N'Engineering',350000,{ts '2007-09-07 00:00:00.000'},17);
GO
INSERT INTO [Department] ([DepartmentID],[Name],[Budget],[StartDate],[InstructorID]) VALUES (
5,N'Economics',100000,{ts '2007-09-07 00:00:00.000'},18);
GO
SET IDENTITY_INSERT [Department] OFF;
GO
ALTER TABLE [Department] ALTER COLUMN [DepartmentID] IDENTITY (8,1);
GO
