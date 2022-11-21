CREATE TABLE [SouthBalance].[Person](
	[PersonKey] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonID] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[JobTitle] [varchar](50) NULL,
	[JobStatus] [varchar](50) NULL,
	[IsDeleted] [bit] CONSTRAINT [DF_Person_IsDeleted] DEFAULT ((0)) NULL,
	CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([PersonKey] ASC)
);
