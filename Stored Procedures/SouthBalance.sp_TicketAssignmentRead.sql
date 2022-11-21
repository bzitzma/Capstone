CREATE PROC [SouthBalance].[sp_TicketAssignmentRead]
	@AssignmentID varchar(50)
AS

BEGIN
	SELECT ta.AssignmentID,
		p.PersonID,
		t.TicketID
	FROM SouthBalance.TicketAssignment ta
	LEFT JOIN SouthBalance.Person p ON p.PersonKey = ta.PersonKey
	LEFT JOIN SouthBalance.Ticket t ON t.TicketKey = ta.TicketKey
	WHERE AssignmentID = @AssignmentID
END;
