CREATE TABLE [SouthBalance].[TicketAssignment](
	[TicketAssignmentKey] [bigint] NOT NULL,
	[PersonKey] [bigint] NULL,
	[TicketKey] [bigint] NULL,
	[AssignmentID] [varchar](50) NULL,
	[IsDeleted] [bit] CONSTRAINT [DF_TicketAssignment_IsDeleted] DEFAULT ((0)) NULL,
	CONSTRAINT [PK_TicketAssignment] PRIMARY KEY CLUSTERED ([TicketAssignmentKey] ASC),
	CONSTRAINT [FK_TicketAssignment_Person] FOREIGN KEY ([PersonKey]) REFERENCES [SouthBalance].[Person] ([PersonKey]),
	CONSTRAINT [FK_TicketAssignment_Ticket] FOREIGN KEY ([TicketKey]) REFERENCES [SouthBalance].[Ticket] ([TicketKey])
);
