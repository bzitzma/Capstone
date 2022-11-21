CREATE PROC [SouthBalance].[sp_TicketRead]
	@TicketID varchar(50)
AS

BEGIN
	SELECT t.TicketID,
		t.TicketStatus,
		t.ResolutionDescription,
		fs.SubmissionID
	FROM SouthBalance.Ticket t
	LEFT JOIN SouthBalance.FormSubmission fs ON fs.FormSubmissionKey = t.FormSubmissionKey
	WHERE TicketID = @TicketID
END;
