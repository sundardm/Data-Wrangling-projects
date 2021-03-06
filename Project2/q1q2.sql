--q1
select * into dsundaram.assignment2PC from PhoneCall
ALTER TABLE dsundaram.assignment2PC ADD EnrollmentGroup nvarchar(50); -- Creating new column
UPDATE dsundaram.assignment2PC SET EnrollmentGroup = 'Clinical Alert' WHERE EncounterCode = 125060000; --Paramters being assigned
UPDATE dsundaram.assignment2PC SET EnrollmentGroup = 'Health Coaching' WHERE EncounterCode = 125060001;
UPDATE dsundaram.assignment2PC SET EnrollmentGroup = 'Technical question' WHERE EncounterCode = 125060002;
UPDATE dsundaram.assignment2PC SET EnrollmentGroup = 'Administrative' WHERE EncounterCode = 125060003;
UPDATE dsundaram.assignment2PC SET EnrollmentGroup = 'Other' WHERE EncounterCode = 125060004;
UPDATE dsundaram.assignment2PC SET EnrollmentGroup = 'Lack of engagement' WHERE EncounterCode = 125060005;

select top 10* from dsundaram.assignment2PC

--q2
select EnrollmentGroup,count(EncounterCode) as [Number of records]
from
dsundaram.assignment2PC
group by EnrollmentGroup
order by count(EncounterCode) desc


--select * from CallDuration
--select * from dsundaram.assignment2PC

drop table dsundaram.assignment2q3
select * into dsundaram.assignment2join from PhoneCall
--q3
select CustomerId, EncounterCode,EnrollmentGroup, CallType, CallDuration, CallOutcome into dsundaram.assignment2q3
from
(select A.*, B.* from dsundaram.assignment2PC A
right join 
CallDuration B
on
A.CustomerId=B.tri_CustomerIDEntityReference)AA

select top 10* from dsundaram.assignment2q3
--q4
ALTER TABLE dsundaram.assignment2q3 ADD CallTypeExt nvarchar(50), CallOutcomeExt nvarchar(50); -- Creating new column
UPDATE dsundaram.assignment2q3 SET CallTypeExt = 'Inbound' WHERE CallType = 1; --Paramters being assigned
UPDATE dsundaram.assignment2q3 SET CallTypeExt = 'Outbound' WHERE CallType = 2;
UPDATE dsundaram.assignment2q3 SET CallOutcomeExt = 'No Response' WHERE CallOutcome = 1;
UPDATE dsundaram.assignment2q3 SET CallOutcomeExt = 'Left voice mail' WHERE CallOutcome = 2;
UPDATE dsundaram.assignment2q3 SET CallOutcomeExt = 'successful' WHERE CallOutcome = 3;


select CallTypeExt, CallOutcomeExt, count(*) as [Number of different call outcomes] from dsundaram.assignment2q3  --- Seeing counts of particular outcomes/combinations
group by CallOutcomeExt, CallTypeExt;


select EnrollmentGroup, sum(CallDuration) as [Call Duration (minutes)] from dsundaram.assignment2q3 -- Getting total duration of call by enrollment group
group by EnrollmentGroup;

--q5
select contactid, gendercode, tri_age, parentcontactidname, tri_imaginecareenrollmentstatus, address1_stateorprovince, tri_imaginecareenrollmentemailsentdate, tri_enrollmentcompletedate, tri_name, SenderName, TextSentDate into dsundaram.assignment2q4
from
(select A.*, B.*,C.* from Demographics A         ---Joining the 3 tables as instructed
inner join
ChronicConditions B
on
A.contactid=B.tri_patientid
inner join
[Text] C
on A.contactid=C.tri_contactId) AA

select top 10* from dsundaram.assignment2q4

-- Using the dateddiff to get number of weeks between minimum and maximum date for each type of sender and finding number of messages per week (approximated)
(select SenderName as [Type of Sender] ,(count(TextSentdate))/(DATEDIFF (Week, min(TextSentDate), max(TextSentDate))) as [Texts per Week],(count(TextSentdate)) as [Total Messages], (DATEDIFF (Week, min(TextSentDate), max(TextSentDate))) as [Total Weeks from 1st text to last text] from dsundaram.assignment2q4  group by SenderName)

--6

--Using dateddiff, we can get the weeks between our first and last date for each Chronic condition and their respective messages. Get total messages related to each condition and divide. 
(select tri_name as [Chronic Condition] ,(count(TextSentdate))/(DATEDIFF (Week, min(TextSentDate), max(TextSentDate))) as [Texts per Week],(count(TextSentdate)) as [Total Messages], (DATEDIFF (Week, min(TextSentDate), max(TextSentDate))) as [Total Weeks from 1st text to last text] from dsundaram.assignment2q4  group by tri_name)

