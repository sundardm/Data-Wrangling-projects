select * from dsundaram.exam

--News alias and renaming column
select * into dsundaram.exam from [dsundaram].[IC_BP] 
EXEC	SP_RENAME	'dsundaram.exam.BPAlerts','BPStatus','Column'

--Renaming factors
UPDATE dsundaram.exam SET [BPStatus]= 'Controlled blood pressure' WHERE [BPStatus]= 'Hypo1';
UPDATE dsundaram.exam SET [BPStatus]= 'Controlled blood pressure' WHERE [BPStatus]= 'Normal';
UPDATE dsundaram.exam SET [BPStatus]= 'Uncontrolled blood pressure' WHERE [BPStatus]= 'HTN1';
UPDATE dsundaram.exam SET [BPStatus]= 'Uncontrolled blood pressure' WHERE [BPStatus]= 'Hypo2';
UPDATE dsundaram.exam SET [BPStatus]= 'Uncontrolled blood pressure' WHERE [BPStatus]= 'HTN2';
UPDATE dsundaram.exam SET [BPStatus]= 'Uncontrolled blood pressure' WHERE [BPStatus]= 'HTN3';

-- Dichotomous outcomes
UPDATE dsundaram.exam SET [BPStatus]= '1' WHERE [BPStatus]= 'Controlled blood pressure';
UPDATE dsundaram.exam SET [BPStatus]= '0' WHERE [BPStatus]= 'Uncontrolled blood pressure';

select * from dsundaram.exam
select * from[dbo].[Demographics]
select * from dsundaram.exam_1 order by ID, ObservedTime 

---merge table
select ID, SystolicValue,Diastolicvalue, BPStatus,ObservedTime, tri_enrollmentcompletedate into dsundaram.exam_1
from
(select A.*, B.* from dsundaram.exam A
inner join 
[dbo].[Demographics] B
on
A.ID =B.contactid)AA



----Q2



select contactid, gendercode,tri_age,parentcontactidname,tri_imaginecareenrollmentstatus, address1_stateorprovince,tri_imaginecareenrollmentemailsentdate,tri_enrollmentcompletedate, tri_name, SenderName, TextSentDate into dsundaram.exam_q2
from
(select A.*, B.*, C.* from [dbo].[Demographics] A
inner join 
[dbo].[ChronicConditions] B
on
A.contactid =B.tri_patientid
inner join
[dbo].[Text] C
on A.contactid = C.tri_contactId
)AA

select * from dsundaram.exam_q2

-- One row for each ID. We have some repeats for dates with some IDs but we assign a rank and get the repeated row with rank =1
select a.contactid, a.gendercode,a.tri_age,parentcontactidname,a.tri_imaginecareenrollmentstatus, a.address1_stateorprovince,a.tri_imaginecareenrollmentemailsentdate,a.tri_enrollmentcompletedate, a.tri_name, a.SenderName, a.TextSentDate 
from
(select contactid, gendercode,tri_age,parentcontactidname,tri_imaginecareenrollmentstatus, address1_stateorprovince,tri_imaginecareenrollmentemailsentdate,tri_enrollmentcompletedate, tri_name, SenderName, TextSentDate
,ROW_NUMBER() OVER (PARTITION BY contactid ORDER BY TextSentDate DESC) rank
          FROM dsundaram.exam_q2) a
 WHERE a.rank = 1 order by contactid



---If we want to show the repeated IDs as well, we simply do an inner join for the max dates into our initial table
--No rank assigned so no deletion of duplicates
SELECT tt.* 
FROM dsundaram.exam_q2 tt
INNER JOIN
    (SELECT contactid, MAX(TextSentDate) AS MaxDateTime
    FROM dsundaram.exam_q2
    GROUP BY contactid) groupedtt 
ON tt.contactid = groupedtt.contactid 
AND tt.TextSentDate = groupedtt.MaxDateTime




