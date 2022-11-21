CREATE PROC [SouthBalance].[sp_TicketAssignmentDelete]
	@AssignmentID varchar(50)
AS

BEGIN
	UPDATE SouthBalance.TicketAssignment
	SET IsDeleted = 1
	WHERE AssignmentID = @AssignmentID
END;
