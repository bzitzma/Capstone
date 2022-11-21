CREATE TABLE [SouthBalance].[FormSubmission](
	[FormSubmissionKey] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonKey] [bigint] NULL,
	[SubmissionID] [varchar](50) NULL,
	[IssueType] [varchar](100) NULL,
	[IssueDescription] [varchar](max) NULL,
	[Location] [varchar](255) NULL,
	[IsDeleted] [bit] CONSTRAINT [DF_FormSubmission_IsDeleted] DEFAULT ((0)) NULL,
	CONSTRAINT [PK_FormSubmission] PRIMARY KEY CLUSTERED ([FormSubmissionKey] ASC)
);
