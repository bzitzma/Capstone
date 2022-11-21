CREATE PROC [SouthBalance].[sp_PersonRead]
	@PersonID varchar(50)
AS

BEGIN
	SELECT PersonID,
		FirstName,
		MiddleName,
		LastName,
		JobTitle,
		JobStatus
	FROM SouthBalance.Person
	WHERE PersonID = @PersonID
END;
