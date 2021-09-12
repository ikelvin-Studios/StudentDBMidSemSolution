﻿CREATE TABLE [dbo].[STUDENTS]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [INDEXNUMBER] VARCHAR(50) NOT NULL, 
    [NAME] VARCHAR(50) NOT NULL, 
    [GENDER] VARCHAR(50) NOT NULL, 
    [USERNAME] VARCHAR(50) NOT NULL, 
    [PASSWORD] VARCHAR(50) NOT NULL, 
    [AGE] NUMERIC NOT NULL, 
    [EMAIL_ID] VARCHAR(50) NOT NULL, 
    [COURSE] NCHAR(10) NOT NULL, 
    [YEAR] NCHAR(10) NOT NULL
)
