CREATE PROC [SouthBalance].[sp_TicketAssignmentCreateUpdate]
	@AssignmentID varchar(50),
	@PersonID varchar(50),
	@TicketID varchar(50)
AS

BEGIN
	DECLARE @PersonKey bigint = (SELECT PersonKey FROM SouthBalance.Person WHERE PersonID = @PersonID)
	DECLARE @TicketKey bigint = (SELECT TicketKey FROM SouthBalance.Ticket WHERE TicketID = @TicketID)

	IF EXISTS (SELECT 1 FROM SouthBalance.TicketAssignment WHERE AssignmentID = @AssignmentID)
		UPDATE SouthBalance.TicketAssignment
		SET PersonKey = @PersonKey,
			TicketKey = @TicketKey,
			AssignmentID = @AssignmentID
		WHERE AssignmentID = @AssignmentID
	ELSE
		INSERT INTO SouthBalance.TicketAssignment(
			PersonKey,
			TicketKey,
			AssignmentID
		) VALUES (
			@PersonKey,
			@TicketKey,
			@AssignmentID
		)
END;
