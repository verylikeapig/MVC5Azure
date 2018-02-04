-- Script Date: 2018/2/4 上午 11:36  - ErikEJ.SqlCeScripting version 3.5.2.74
CREATE TABLE [Person] (
  [ID] int IDENTITY (1,1)  NOT NULL
, [LastName] nvarchar(50)  NOT NULL
, [FirstName] nvarchar(50)  NOT NULL
, [HireDate] datetime NULL
, [EnrollmentDate] datetime NULL
, [Discriminator] nvarchar(128) DEFAULT 'Instructor'  NOT NULL
);
GO
ALTER TABLE [Person] ADD CONSTRAINT [PK_Person_ID] PRIMARY KEY ([ID]);
GO

-- Script Date: 2018/2/4 上午 11:37  - ErikEJ.SqlCeScripting version 3.5.2.74
SET IDENTITY_INSERT [Person] ON;
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
1,N'Alexander',N'Carson',NULL,{ts '2010-09-01 00:00:00.000'},N'Student');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
2,N'Alonso',N'Meredith',NULL,{ts '2012-09-01 00:00:00.000'},N'Student');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
3,N'Anand',N'Arturo',NULL,{ts '2013-09-01 00:00:00.000'},N'Student');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
4,N'Barzdukas',N'Gytis',NULL,{ts '2012-09-01 00:00:00.000'},N'Student');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
5,N'Li',N'Yan',NULL,{ts '2012-09-01 00:00:00.000'},N'Student');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
6,N'Justice',N'Peggy',NULL,{ts '2011-09-01 00:00:00.000'},N'Student');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
7,N'Norman',N'Laura',NULL,{ts '2013-09-01 00:00:00.000'},N'Student');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
8,N'Olivetto',N'Nino',NULL,{ts '2005-09-01 00:00:00.000'},N'Student');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
9,N'Abercrombie',N'Kim',{ts '1995-03-11 00:00:00.000'},NULL,N'Instructor');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
16,N'Fakhouri',N'Fadi',{ts '2002-07-06 00:00:00.000'},NULL,N'Instructor');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
17,N'Harui',N'Roger',{ts '1998-07-01 00:00:00.000'},NULL,N'Instructor');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
18,N'Kapoor',N'Candace',{ts '2001-01-15 00:00:00.000'},NULL,N'Instructor');
GO
INSERT INTO [Person] ([ID],[LastName],[FirstName],[HireDate],[EnrollmentDate],[Discriminator]) VALUES (
19,N'Zheng',N'Roger',{ts '2004-02-12 00:00:00.000'},NULL,N'Instructor');
GO
SET IDENTITY_INSERT [Person] OFF;
GO
ALTER TABLE [Person] ALTER COLUMN [ID] IDENTITY (20,1);
GO
