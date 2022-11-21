CREATE PROC [SouthBalance].[sp_PersonDelete]
	@PersonID varchar(50)
AS

BEGIN
	UPDATE SouthBalance.Person
	SET IsDeleted = 1
	WHERE PersonID = @PersonID
END;
