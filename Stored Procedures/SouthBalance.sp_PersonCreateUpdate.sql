CREATE PROC [SouthBalance].[sp_PersonCreateUpdate]
	@PersonID varchar(50),
	@FirstName varchar(50),
	@MiddleName varchar(50),
	@LastName varchar(50),
	@JobTitle varchar(50),
	@JobStatus varchar(50)
AS

BEGIN
	IF EXISTS (SELECT 1 FROM SouthBalance.Person WHERE PersonID = @PersonID)
		UPDATE SouthBalance.Person
		SET PersonID = @PersonID,
			FirstName = @FirstName,
			MiddleName = @MiddleName,
			LastName = @LastName,
			JobTitle = @JobTitle,
			JobStatus = @JobStatus
		WHERE PersonID = @PersonID
	ELSE
		INSERT INTO SouthBalance.Person (
			PersonID,
			FirstName,
			MiddleName,
			LastName,
			JobTitle,
			JobStatus
		) VALUES (
			@PersonID,
			@FirstName,
			@MiddleName,
			@LastName,
			@JobTitle,
			@JobStatus
		)
END;
