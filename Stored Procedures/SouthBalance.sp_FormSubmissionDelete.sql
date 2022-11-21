CREATE PROC [SouthBalance].[sp_FormSubmissionDelete]
	@SubmissionID varchar(50)
AS

BEGIN
	UPDATE SouthBalance.FormSubmission
	SET IsDeleted = 1
	WHERE SubmissionID = @SubmissionID
END;
