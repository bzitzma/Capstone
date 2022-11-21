CREATE PROC [SouthBalance].[sp_FormSubmissionRead]
	@SubmissionID varchar(50)
AS

BEGIN
	SELECT SubmissionID,
		IssueType,
		IssueDescription,
		[Location]
	FROM SouthBalance.FormSubmission
	WHERE SubmissionID = @SubmissionID

END;
