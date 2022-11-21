CREATE PROC [SouthBalance].[sp_TicketDelete]
	@TicketID varchar(50)
AS

BEGIN
	UPDATE SouthBalance.Ticket
	SET IsDeleted = 1
	WHERE TicketID = @TicketID
END;
