CREATE PROC [SouthBalance].[sp_FormSubmissionCreateUpdate]
	@SubmissionID varchar(50),
	@IssueType varchar(100),
	@IssueDescription varchar(max),
	@Location varchar(255)
AS

BEGIN
	IF EXISTS (SELECT 1 FROM SouthBalance.FormSubmission WHERE SubmissionID = @SubmissionID)
		UPDATE SouthBalance.FormSubmission
		SET SubmissionID = @SubmissionID,
			IssueType = @IssueType,
			IssueDescription = @IssueDescription,
			[Location] = @Location
		WHERE SubmissionID = @SubmissionID
	ELSE
		INSERT INTO SouthBalance.FormSubmission (
			SubmissionID,
			IssueType,
			IssueDescription,
			[Location]
		) VALUES (
			@SubmissionID,
			@IssueType,
			@IssueDescription,
			@Location
		)
END;
