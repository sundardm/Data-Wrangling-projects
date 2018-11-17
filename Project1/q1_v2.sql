
-- select * into dsundaram.assignment1 from Demographics -- One time setup

SP_RENAME 'dsundaram.assignment1.gendercode', 'Gender', 'Column'
GO
SP_RENAME 'dsundaram.assignment1.tri_age', 'Age', 'Column'
GO
SP_RENAME 'dsundaram.assignment1.contactid', 'ID', 'Column'
GO
SP_RENAME 'dsundaram.assignment1.address1_stateorprovince', 'State', 'Column'
GO
SP_RENAME 'dsundaram.assignment1.tri_imaginecareenrollmentemailsentdate', 'EmailSentdate', 'Column'
GO
SP_RENAME 'dsundaram.assignment1.tri_enrollmentcompletedate', 'Completedate', 'Column'
GO

select * from (
select try_convert (date, Completedate) as complete_date,
try_convert(date,EmailSentdate) as sent_date,
datediff (day,try_convert(date, EmailSentdate),
try_convert(date,Completedate))
as [DateDifference (Days)] from dsundaram.assignment1) AA            -- Code from class notes

ALTER TABLE dsundaram.assignment1 ADD [Date Difference (days)] nvarchar(50);    -- Creating new column
UPDATE dsundaram.assignment1 SET [Date Difference (days)] = (SELECT (datediff (day,try_convert(date, EmailSentdate),try_convert(date,Completedate))))  -- Pasting date difference into new column


select top 10* from dsundaram.assignment1