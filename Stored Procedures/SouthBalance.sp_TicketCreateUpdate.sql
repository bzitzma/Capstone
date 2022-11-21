CREATE PROC [SouthBalance].[sp_TicketCreateUpdate]
	@SubmissionID varchar(50),
	@TicketID varchar(50),
	@TicketStatus varchar(100),
	@ResolutionDescription varchar(max)
AS

BEGIN
	DECLARE @FormSubmissionKey bigint = (SELECT FormSubmissionKey FROM SouthBalance.FormSubmission WHERE SubmissionID = @SubmissionID)

	IF EXISTS (SELECT 1 FROM SouthBalance.Ticket WHERE TicketID = @TicketID)
		UPDATE SouthBalance.Ticket
		SET FormSubmissionKey = @FormSubmissionKey,
			TicketID = @TicketID,
			TicketStatus = @TicketStatus,
			ResolutionDescription = @ResolutionDescription
		WHERE TicketID = @TicketID
	ELSE
		INSERT INTO SouthBalance.Ticket (
			FormSubmissionKey,
			TicketID,
			TicketStatus,
			ResolutionDescription
		) VALUES (
			@FormSubmissionKey,
			@TicketID,
			@TicketStatus,
			@ResolutionDescription
		)
END;
