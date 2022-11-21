CREATE TABLE [SouthBalance].[Ticket](
	[TicketKey] [bigint] IDENTITY(1,1) NOT NULL,
	[FormSubmissionKey] [bigint] NULL,
	[TicketID] [varchar](50) NULL,
	[TicketStatus] [varchar](100) NULL,
	[ResolutionDescription] [varchar](max) NULL,
	[IsDeleted] [bit] CONSTRAINT [DF_Ticket_IsDeleted] DEFAULT ((0)) NULL,
	CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED ([TicketKey] ASC),
	CONSTRAINT [FK_Ticket_FormSubmission] FOREIGN KEY ([FormSubmissionKey]) REFERENCES [SouthBalance].[FormSubmission] ([FormSubmissionKey])
);
