
-- OPTIONAL -- convert column to int -- FOLLOW FORMAT
ALTER TABLE dsundaram.diabetics ALTER COLUMN [Age_when_first_diagnosed] int;
ALTER TABLE dsundaram.DIQ_I A[DIQ010]LTER COLUMN diq175a int

--News alias
select * into dsundaram.basic1 from [dsundaram].[basic] 

--NA = 51
DELETE from [dsundaram].[basic1]  WHERE [DID040] IS NULL AND 
[DIQ160] IS NULL AND 
[DIQ170] IS NULL AND
[DIQ172] IS NULL AND
[DIQ175A] IS NULL AND
[DIQ175B] IS NULL AND
[DIQ175C] IS NULL AND
[DIQ175D] IS NULL AND
[DIQ175E] IS NULL AND
[DIQ175F] IS NULL AND
[DIQ175G] IS NULL AND 
[DIQ175H] IS NULL AND
[DIQ175I] IS NULL AND 
[DIQ175J] IS NULL AND
[DIQ175K] IS NULL AND
[DIQ175L]IS NULL AND
[DIQ175M] IS NULL AND
[DIQ175N] IS NULL AND
[DIQ175O] IS NULL AND
[DIQ175P] IS NULL AND
[DIQ175Q] IS NULL AND
[DIQ175R] IS NULL AND
[DIQ175S] IS NULL AND
[DIQ175T] IS NULL AND
[DIQ175U] IS NULL AND
[DIQ175V] IS NULL AND
[DIQ175W] IS NULL AND
[DIQ175X] IS NULL AND
[DIQ180] IS NULL AND
[DID060] IS NULL AND
[DIQ060U] IS NULL AND
[DIQ070] IS NULL AND
[DIQ230] IS NULL AND
[DIQ240] IS NULL AND
[DID250] IS NULL AND
[DID260] IS NULL AND
[DIQ260U] IS NULL AND
[DIQ275] IS NULL AND
[DIQ280] IS NULL AND
[DIQ291] IS NULL AND
[DIQ300S] IS NULL AND
[DIQ300D] IS NULL AND
[DID310S] IS NULL AND
[DID310D] IS NULL AND
[DID320] IS NULL AND
[DID330] IS NULL AND
[DID341] IS NULL AND
[DID350] IS NULL AND
[DIQ350U] IS NULL AND
[DIQ360] IS NULL AND
[DIQ080] IS NULL;

-- 47 NAs

Delete from [dsundaram].[basic1]  WHERE [DID040] IS NULL AND 
[DIQ175A] IS NULL AND
[DIQ175B] IS NULL AND
[DIQ175C] IS NULL AND
[DIQ175D] IS NULL AND
[DIQ175E] IS NULL AND
[DIQ175F] IS NULL AND
[DIQ175G] IS NULL AND 
[DIQ175H] IS NULL AND
[DIQ175I] IS NULL AND 
[DIQ175J] IS NULL AND
[DIQ175K] IS NULL AND
[DIQ175L]IS NULL AND
[DIQ175M] IS NULL AND
[DIQ175N] IS NULL AND
[DIQ175O] IS NULL AND
[DIQ175P] IS NULL AND
[DIQ175Q] IS NULL AND
[DIQ175R] IS NULL AND
[DIQ175S] IS NULL AND
[DIQ175T] IS NULL AND
[DIQ175U] IS NULL AND
[DIQ175V] IS NULL AND
[DIQ175W] IS NULL AND
[DIQ175X] IS NULL AND
[DID060] IS NULL AND
[DIQ060U] IS NULL AND
[DIQ070] IS NULL AND
[DIQ230] IS NULL AND
[DIQ240] IS NULL AND
[DID250] IS NULL AND
[DID260] IS NULL AND
[DIQ260U] IS NULL AND
[DIQ275] IS NULL AND
[DIQ280] IS NULL AND
[DIQ291] IS NULL AND
[DIQ300S] IS NULL AND
[DIQ300D] IS NULL AND
[DID310S] IS NULL AND
[DID310D] IS NULL AND
[DID320] IS NULL AND
[DID330] IS NULL AND
[DID341] IS NULL AND
[DID350] IS NULL AND
[DIQ350U] IS NULL AND
[DIQ360] IS NULL AND
[DIQ080] IS NULL;

--50 NAs
delete from [dsundaram].[basic1]  WHERE [DID040] IS NULL AND 
[DIQ160] IS NULL AND 
[DIQ170] IS NULL AND
[DIQ172] IS NULL AND
[DIQ175A] IS NULL AND
[DIQ175B] IS NULL AND
[DIQ175C] IS NULL AND
[DIQ175D] IS NULL AND
[DIQ175E] IS NULL AND
[DIQ175F] IS NULL AND
[DIQ175G] IS NULL AND 
[DIQ175H] IS NULL AND
[DIQ175I] IS NULL AND 
[DIQ175J] IS NULL AND
[DIQ175K] IS NULL AND
[DIQ175L]IS NULL AND
[DIQ175M] IS NULL AND
[DIQ175N] IS NULL AND
[DIQ175O] IS NULL AND
[DIQ175P] IS NULL AND
[DIQ175Q] IS NULL AND
[DIQ175R] IS NULL AND
[DIQ175S] IS NULL AND
[DIQ175T] IS NULL AND
[DIQ175U] IS NULL AND
[DIQ175V] IS NULL AND
[DIQ175W] IS NULL AND
[DIQ175X] IS NULL AND
[DIQ180] IS NULL AND
[DID060] IS NULL AND
[DIQ060U] IS NULL AND
[DIQ230] IS NULL AND
[DIQ240] IS NULL AND
[DID250] IS NULL AND
[DID260] IS NULL AND
[DIQ260U] IS NULL AND
[DIQ275] IS NULL AND
[DIQ280] IS NULL AND
[DIQ291] IS NULL AND
[DIQ300S] IS NULL AND
[DIQ300D] IS NULL AND
[DID310S] IS NULL AND
[DID310D] IS NULL AND
[DID320] IS NULL AND
[DID330] IS NULL AND
[DID341] IS NULL AND
[DID350] IS NULL AND
[DIQ350U] IS NULL AND
[DIQ360] IS NULL AND
[DIQ080] IS NULL;

--Diabetes table 
select [SEQN],[DIQ010],[DID040],[DIQ050],[DID060],[DIQ060U], [DIQ070], [DIQ230],[DIQ240],
[DID250],[DID260],[DIQ260U],[DIQ275],[DIQ280],[DIQ291],[DIQ300S],[DIQ300D],[DID310S],
[DID310D],[DID320],[DID330],[DID341],[DID350],[DIQ350U],[DIQ360],[DIQ080] into dsundaram.basicd from dsundaram.basic1 WHERE [DIQ010] = '1';

--Non diabetes table
select [SEQN],[DIQ010],[DIQ160],[DIQ170],[DIQ172],[DIQ175A],[DIQ175B],[DIQ175C],[DIQ175D],
[DIQ175E],[DIQ175F],[DIQ175G],[DIQ175H],[DIQ175I],[DIQ175J],[DIQ175K],[DIQ175L], [DIQ175M],[DIQ175N],
[DIQ175O],[DIQ175P],[DIQ175Q],[DIQ175R],[DIQ175S],[DIQ175T],[DIQ175U],[DIQ175V],[DIQ175W],[DIQ175X],
[DIQ180],[DIQ050],[DID060],[DIQ060U],[DIQ070] into dsundaram.basicnd from dsundaram.basic1 WHERE [DIQ010] = '2' OR [DIQ010] = '3' OR [DIQ010] = '9';

select * from dsundaram.basicd 
---Rename columns of Diabetes table
EXEC	SP_RENAME	'dsundaram.basicd.SEQN','Responder Sequence Number','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ010','Doctor told you have diabetes?','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID040','Age when first diagnosed (years)	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ050','Taking insulin now?','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID060','	Insulin intake duration	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ060U','Unit of measure for insulin	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ070','Take diabetic pills?	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ230','	How long ago did you see a diabetes specialist?	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ240','	Do you have a preferred specialist?	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID250','	Visits to this doctor in past year','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID260','	How often do you check for blood sugar?	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ260U','Unit of measure for blood sugar check','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ275','	A1C check in the last year?	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ280','	Last recorded A1C level	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ291','	Recommended level	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ300S','SBP level','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ300D','DBP level','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID310S','Recommended SBP	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID310D','Recommended DBP	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID320','	LDL level	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID330','	Recommended LDL	','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID341','	Times doctor checked feet for sores in past year','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DID350','	How often do you check feet?','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ350U','Unit of measure for feet check','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ360','	Last time had pupils dilated','Column'
EXEC	SP_RENAME	'dsundaram.basicd.DIQ080','	Diabetes affected eyes/Retinopathy','Column'

select * from dsundaram.basicNd 
---Rename columns of non diabetes column
EXEC SP_RENAME'dsundaram.basicnd.SEQN','	Responder Sequence Number','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ010','	Doctor told you have diabetes?','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ160','	Ever told you have prediabetes?	','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ170','	Health risks for diabetes?	','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ172','	Feeling you could be at risk for diabetes?','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175A','	Family History','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175B','	Overweight','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175C','	Age','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175D','	Poor Diet','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175E','	Race','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175F','	Had baby weight >9 lbs at birth','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175G','	Lack of physical activity','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175H','	High BP','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175I','	High blood sugar','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175J','	High Cholesterol','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175K','	Hypoglycemic','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175L','	Extreme hunger','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175M','	Tingling/numbness in hands/feet','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175N','	Blurred vision','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175O','	Increased fatigue','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175P','	Anyone could be at risk','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175Q','	Doctor warning','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175R','	Other','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175S','	Gestational diabetes','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175T','	Frequent urination','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175U','	Thirst','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175V','	Craving sugar','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175W','	Medication','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ175X','	Polycystic ovarian syndrome','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ180','Had blood tested in past 3 years?','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ050','Taking insulin?','Column'
EXEC SP_RENAME'dsundaram.basicnd.DID060','Insulin intake duration','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ060U','Unit of measure for insulin intake','Column'
EXEC SP_RENAME'dsundaram.basicnd.DIQ070','Take diabetic pills to lower blood sugar?','Column'


--Diabetes factors
select * from dsundaram.basicd 
-- Have Diabetes? Only yes because this is only diabetics
UPDATE dsundaram.basicd SET [Doctor told you have diabetes?]= 'YES' WHERE [Doctor told you have diabetes?]= '1'; --Parameters being assigned

--Age disanosed

UPDATE dsundaram.basicd  SET [Age when first diagnosed (years)	]= 'Less than 1 year old' WHERE [Age when first diagnosed (years)	]= '666';
UPDATE dsundaram.basicd  SET [Age when first diagnosed (years)	]= '> 80 ' WHERE [Age when first diagnosed (years)	]= '80';
UPDATE dsundaram.basicd  SET [Age when first diagnosed (years)	]= 'Refused' WHERE [Age when first diagnosed (years)	]= '777';
UPDATE dsundaram.basicd  SET [Age when first diagnosed (years)	]= 'Dont Know' WHERE [Age when first diagnosed (years)	]= '999';
UPDATE dsundaram.basicd  SET [Age when first diagnosed (years)	] = 'Missing' WHERE [Age when first diagnosed (years)	] IS NULL;

-- Taking Insulin Now?
UPDATE dsundaram.basicd SET [Taking insulin now?]= 'Yes' WHERE [Taking insulin now?]= '1';
UPDATE dsundaram.basicd SET [Taking insulin now?]= 'No' WHERE [Taking insulin now?]= '2';
UPDATE dsundaram.basicd SET [Taking insulin now?]= 'Refused' WHERE [Taking insulin now?]= '7';
UPDATE dsundaram.basicd SET [Taking insulin now?]= 'Dont Know' WHERE [Taking insulin now?]= '9';

--How long taking insulin?
UPDATE dsundaram.basicd SET [	Insulin intake duration	]= 'Not Applicable' WHERE [	Insulin intake duration	]= 'No';
UPDATE dsundaram.basicd SET [	Insulin intake duration	]= 'Dont Know' WHERE [	Insulin intake duration	]= '999';
UPDATE dsundaram.basicd SET [	Insulin intake duration	]= 'Refused' WHERE [	Insulin intake duration	]= '777';
UPDATE dsundaram.basicd SET [	Insulin intake duration	]= 'Less than 1 month' WHERE [	Insulin intake duration	]= '666';
UPDATE dsundaram.basicd SET [	Insulin intake duration	]= 'Not Applicable' WHERE [	Insulin intake duration	] IS NULL;
--Unit of measu

UPDATE dsundaram.basicd SET [Unit of measure for insulin	]= 'Not Applicable' WHERE [Taking insulin now?]= 'No';
UPDATE dsundaram.basicd SET [Unit of measure for insulin	]= 'Not Applicable' WHERE [	Insulin intake duration	]= 'Less than 1 month';
UPDATE dsundaram.basicd SET [Unit of measure for insulin	]= 'Not Applicable' WHERE [	Insulin intake duration	]= 'Dont Know';
UPDATE dsundaram.basicd SET [Unit of measure for insulin	]= 'Months' WHERE [Unit of measure for insulin	]= '1';
UPDATE dsundaram.basicd SET [Unit of measure for insulin	]= 'Years' WHERE [Unit of measure for insulin	]= '2';
UPDATE dsundaram.basicd SET [Unit of measure for insulin	]= 'Not Applicable' WHERE [	Insulin intake duration	]= 'Not Applicable';

-- Diabetic pills
UPDATE dsundaram.basicd SET [Take diabetic pills?	]= 'Yes' WHERE [Take diabetic pills?	]= '1';
UPDATE dsundaram.basicd SET [Take diabetic pills?	]= 'No' WHERE [Take diabetic pills?	]= '2';
UPDATE dsundaram.basicd SET [Take diabetic pills?	]= 'Refused' WHERE [Take diabetic pills?	]= '7';
UPDATE dsundaram.basicd SET [Take diabetic pills?	]= 'Dont Know' WHERE [Take diabetic pills?	]= '9';
UPDATE dsundaram.basicd SET [Take diabetic pills?	]= 'Not Applicable' WHERE [Take diabetic pills?	] IS NULL;

--How long ago diabetes
UPDATE dsundaram.basicd SET [	How long ago did you see a diabetes specialist?	]= '1 year or less' WHERE [	How long ago did you see a diabetes specialist?	]= '1';
UPDATE dsundaram.basicd SET [	How long ago did you see a diabetes specialist?	]= '1-2 years' WHERE [	How long ago did you see a diabetes specialist?	]= '2';
UPDATE dsundaram.basicd SET [	How long ago did you see a diabetes specialist?	]= '2-5 years' WHERE [	How long ago did you see a diabetes specialist?	]= '3';
UPDATE dsundaram.basicd SET [	How long ago did you see a diabetes specialist?	]= 'More than 5 years' WHERE [	How long ago did you see a diabetes specialist?	]= '4';
UPDATE dsundaram.basicd SET [	How long ago did you see a diabetes specialist?	]= 'Never' WHERE [	How long ago did you see a diabetes specialist?	]= '5';
UPDATE dsundaram.basicd SET [	How long ago did you see a diabetes specialist?	]= 'Refused' WHERE [	How long ago did you see a diabetes specialist?	]= '7';
UPDATE dsundaram.basicd SET [	How long ago did you see a diabetes specialist?	]= 'Dont Know' WHERE [	How long ago did you see a diabetes specialist?	]= '9';
UPDATE dsundaram.basicd SET [	How long ago did you see a diabetes specialist?	]= 'Not Applicable' WHERE [	How long ago did you see a diabetes specialist?	] IS NULL;

--Is there 1 doctor
UPDATE dsundaram.basicd SET [	Do you have a preferred specialist?	]= 'Yes' WHERE [	Do you have a preferred specialist?	] = '1';
UPDATE dsundaram.basicd SET [	Do you have a preferred specialist?	]= 'No' WHERE [	Do you have a preferred specialist?	] = '2';
UPDATE dsundaram.basicd SET [	Do you have a preferred specialist?	]= 'Refused' WHERE [	Do you have a preferred specialist?	] = '7';
UPDATE dsundaram.basicd SET [	Do you have a preferred specialist?	]= 'Dont Know' WHERE [	Do you have a preferred specialist?	] = '9';
UPDATE dsundaram.basicd SET [	Do you have a preferred specialist?	]= 'Not Applicable' WHERE [	Do you have a preferred specialist?	] IS NULL;

--Past year how many times

UPDATE dsundaram.basicd SET [	Visits to this doctor in past year]= 'None' WHERE [	Visits to this doctor in past year] = '0';
UPDATE dsundaram.basicd SET [	Visits to this doctor in past year]= 'Refused' WHERE [	Visits to this doctor in past year] = '7777';
UPDATE dsundaram.basicd SET [	Visits to this doctor in past year]= 'Dont Know' WHERE [	Visits to this doctor in past year] = '9999';
UPDATE dsundaram.basicd SET [	Visits to this doctor in past year]= 'Not Applicable' WHERE [	Visits to this doctor in past year] IS NULL;

--How often do you check blood
UPDATE dsundaram.basicd SET [	How often do you check for blood sugar?	]= 'Never' WHERE [	How often do you check for blood sugar?	] = '0';
UPDATE dsundaram.basicd SET [	How often do you check for blood sugar?	]= 'Refused' WHERE [	How often do you check for blood sugar?	] = '777';
UPDATE dsundaram.basicd SET [	How often do you check for blood sugar?	]= 'Dont Know' WHERE [	How often do you check for blood sugar?	] = '999';
UPDATE dsundaram.basicd SET [	How often do you check for blood sugar?	]= 'Not Applicable' WHERE [	How often do you check for blood sugar?	] IS NULL;

--unit of measure
UPDATE dsundaram.basicd SET [Unit of measure for blood sugar check]= 'Per Day' WHERE  [Unit of measure for blood sugar check] = '1';
UPDATE dsundaram.basicd SET [Unit of measure for blood sugar check]= 'Per Week' WHERE  [Unit of measure for blood sugar check] = '2';
UPDATE dsundaram.basicd SET [Unit of measure for blood sugar check]= 'Per Month' WHERE  [Unit of measure for blood sugar check] = '3';
UPDATE dsundaram.basicd SET [Unit of measure for blood sugar check]= 'Per Year' WHERE  [Unit of measure for blood sugar check] = '4';
UPDATE dsundaram.basicd SET [Unit of measure for blood sugar check]= 'Not Applicable' WHERE  [Unit of measure for blood sugar check] IS NULL;

--A1c check
UPDATE dsundaram.basicd SET [	A1C check in the last year?	]= 'Yes' WHERE  [	A1C check in the last year?	] = '1' ;
UPDATE dsundaram.basicd SET [	A1C check in the last year?	]= 'No' WHERE  [	A1C check in the last year?	] = '2' ;
UPDATE dsundaram.basicd SET [	A1C check in the last year?	]= 'Refused' WHERE  [	A1C check in the last year?	] = '7' ;
UPDATE dsundaram.basicd SET [	A1C check in the last year?	]= 'Dont Know' WHERE  [	A1C check in the last year?	] = '9' ;
UPDATE dsundaram.basicd SET [	A1C check in the last year?	]= 'Not Applicable' WHERE  [	A1C check in the last year?	] IS NULL ;

--last a1c level
UPDATE dsundaram.basicd SET [	Last recorded A1C level	]= 'Refused' WHERE  [	Last recorded A1C level	]= '777';
UPDATE dsundaram.basicd SET [	Last recorded A1C level	]= 'Dont Know' WHERE  [	Last recorded A1C level	]= '999';
UPDATE dsundaram.basicd SET [	Last recorded A1C level	]= 'Not Applicable' WHERE  [	Last recorded A1C level	] IS NULL;


--Recommended A1c
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Less than 6' WHERE  [	Recommended level	]= '1';
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Less than 7' WHERE  [	Recommended level	]= '2';
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Less than 8' WHERE  [	Recommended level	]= '3';
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Less than 9' WHERE  [	Recommended level	]= '4';
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Less than 10' WHERE  [	Recommended level	]= '5';
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Did not specify' WHERE  [	Recommended level	]= '6';
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Refused' WHERE  [	Recommended level	]= '77';
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Dont Know' WHERE  [	Recommended level	]= '99';
UPDATE dsundaram.basicd SET [	Recommended level	]= 'Not Applicable' WHERE  [	Recommended level	] IS NULL;

--SBP Level
UPDATE dsundaram.basicd SET [SBP level]= 'Refused' WHERE [SBP level] = '7777';
UPDATE dsundaram.basicd SET [SBP level]= 'Dont Know' WHERE [SBP level] = '9999';
UPDATE dsundaram.basicd SET [SBP level]= 'Not Applicable' WHERE [SBP level] IS NULL;

--DBP Level
UPDATE dsundaram.basicd SET [DBP level]= 'Refused' WHERE [DBP level] = '7777';
UPDATE dsundaram.basicd SET [DBP level]= 'Dont Know' WHERE [DBP level] = '9999';
UPDATE dsundaram.basicd SET [DBP level]= 'Not Applicable' WHERE [DBP level] IS NULL;

--Recommended SBP
UPDATE dsundaram.basicd SET [Recommended SBP	] ='Did not specify' WHERE [Recommended SBP	] = '6666';
UPDATE dsundaram.basicd SET [Recommended SBP	]= 'Refused' WHERE [Recommended SBP	] = '7777';
UPDATE dsundaram.basicd SET [Recommended SBP	] ='Dont Know' WHERE [Recommended SBP	] = '9999';
UPDATE dsundaram.basicd SET [Recommended SBP	]= 'Not Applicable' WHERE [Recommended SBP	] IS NULL;

--Recommended DBP
UPDATE dsundaram.basicd SET [Recommended DBP	]= 'Did not specify' WHERE [Recommended DBP	] = '6666';
UPDATE dsundaram.basicd SET [Recommended DBP	]= 'Refused' WHERE [Recommended DBP	] = '7777';
UPDATE dsundaram.basicd SET [Recommended DBP	] ='Dont Know' WHERE [Recommended DBP	] = '9999';
UPDATE dsundaram.basicd SET [Recommended DBP	]= 'Not Applicable' WHERE [Recommended DBP	] IS NULL;

--LDL level
UPDATE dsundaram.basicd SET [	LDL level	]= 'Never heard of LDL' WHERE [	LDL level	] = '5555';
UPDATE dsundaram.basicd SET [	LDL level	]= 'Never had cholesterol test' WHERE [	LDL level	] = '6666';
UPDATE dsundaram.basicd SET [	LDL level	]= 'Refused' WHERE [	LDL level	] = '7777';
UPDATE dsundaram.basicd SET [	LDL level	]= 'Dont Know' WHERE [	LDL level	] = '9999';
UPDATE dsundaram.basicd SET [	LDL level	]= 'Not Applicable' WHERE [	LDL level	] IS NULL;

--- Recommended level
UPDATE dsundaram.basicd SET [	Recommended LDL	] = 'Did not specify' WHERE [	Recommended LDL	] = '6666';
UPDATE dsundaram.basicd SET [	Recommended LDL	] = 'Refused' WHERE [	Recommended LDL	] = '7777';
UPDATE dsundaram.basicd SET [	Recommended LDL	] = 'Dont Know' WHERE [	Recommended LDL	] = '9999';
UPDATE dsundaram.basicd SET [	Recommended LDL	] = 'Not Applicable' WHERE [	Recommended LDL	] IS NULL;

--Times doctor checked feet
UPDATE dsundaram.basicd SET [	Times doctor checked feet for sores in past year] = 'None' WHERE [	Times doctor checked feet for sores in past year] = '0';
UPDATE dsundaram.basicd SET [	Times doctor checked feet for sores in past year] = 'Refused' WHERE [	Times doctor checked feet for sores in past year] = '7777';
UPDATE dsundaram.basicd SET [	Times doctor checked feet for sores in past year] = 'Dont know/not sure' WHERE [	Times doctor checked feet for sores in past year] = '9999';
UPDATE dsundaram.basicd SET [	Times doctor checked feet for sores in past year] = 'Not Applicable' WHERE [	Times doctor checked feet for sores in past year] IS NULL;

--How often do you check feet
UPDATE dsundaram.basicd SET [	How often do you check feet?] = 'None' WHERE [	How often do you check feet?] = '0';
UPDATE dsundaram.basicd SET [	How often do you check feet?] = 'Refused' WHERE [	How often do you check feet?] = '7777';
UPDATE dsundaram.basicd SET [	How often do you check feet?] = 'Dont Know' WHERE [	How often do you check feet?] = '9999';
UPDATE dsundaram.basicd SET [	How often do you check feet?] = 'Not Applicable' WHERE [	How often do you check feet?] IS NULL;

--Unit of measure
UPDATE dsundaram.basicd SET [Unit of measure for feet check] = 'Per day' WHERE [Unit of measure for feet check] = '1';
UPDATE dsundaram.basicd SET [Unit of measure for feet check] = 'Per week' WHERE [Unit of measure for feet check] = '2';
UPDATE dsundaram.basicd SET [Unit of measure for feet check] = 'Per month' WHERE [Unit of measure for feet check] = '3';
UPDATE dsundaram.basicd SET [Unit of measure for feet check] = 'Per year' WHERE [Unit of measure for feet check] = '4';
UPDATE dsundaram.basicd SET [Unit of measure for feet check] = 'Not Applicable' WHERE [Unit of measure for feet check] IS NULL;

--Last time pupils checked
UPDATE dsundaram.basicd SET [	Last time had pupils dilated] = 'Less than 1 month' WHERE [	Last time had pupils dilated] = '1';
UPDATE dsundaram.basicd SET [	Last time had pupils dilated] = '1-12 months' WHERE [	Last time had pupils dilated] = '2';
UPDATE dsundaram.basicd SET [	Last time had pupils dilated] = '13-24 months' WHERE [	Last time had pupils dilated] = '3';
UPDATE dsundaram.basicd SET [	Last time had pupils dilated] = 'Greater than 2 years' WHERE [	Last time had pupils dilated] = '4';
UPDATE dsundaram.basicd SET [	Last time had pupils dilated] = 'Never' WHERE [	Last time had pupils dilated] = '5';
UPDATE dsundaram.basicd SET [	Last time had pupils dilated] = 'Refused' WHERE [	Last time had pupils dilated] = '7';
UPDATE dsundaram.basicd SET [	Last time had pupils dilated] = 'Dont know' WHERE [	Last time had pupils dilated] = '9';
UPDATE dsundaram.basicd SET [	Last time had pupils dilated] = 'Not Applicable' WHERE [	Last time had pupils dilated] IS NULL;


--retinpathy
UPDATE dsundaram.basicd SET [	Diabetes affected eyes/Retinopathy] = 'Yes' WHERE [	Diabetes affected eyes/Retinopathy] = '1';
UPDATE dsundaram.basicd SET [	Diabetes affected eyes/Retinopathy] = 'No' WHERE [	Diabetes affected eyes/Retinopathy] = '2';
UPDATE dsundaram.basicd SET [	Diabetes affected eyes/Retinopathy] = 'Refused' WHERE [	Diabetes affected eyes/Retinopathy] = '7';
UPDATE dsundaram.basicd SET [	Diabetes affected eyes/Retinopathy] = 'Dont know' WHERE [	Diabetes affected eyes/Retinopathy] = '9';
UPDATE dsundaram.basicd SET [	Diabetes affected eyes/Retinopathy] = 'Not Applicable' WHERE [	Diabetes affected eyes/Retinopathy] IS NULL;



---------------------------
----------------
---------------------------
-- Non diabetes factors

select * from dsundaram.basicnd

-- Have Diabetes? Only yes because this is only diabetics
UPDATE dsundaram.basicnd SET [	Doctor told you have diabetes?]= 'No' WHERE [	Doctor told you have diabetes?]= '2'; --Paramters being assigned
UPDATE dsundaram.basicnd SET [	Doctor told you have diabetes?]= 'Borderline' WHERE [	Doctor told you have diabetes?]= '3';
UPDATE dsundaram.basicnd SET [	Doctor told you have diabetes?]= 'Refused' WHERE [	Doctor told you have diabetes?]= '7';
UPDATE dsundaram.basicnd SET [	Doctor told you have diabetes?]= 'Dont know' WHERE [	Doctor told you have diabetes?]= '9';

--prediabetes
UPDATE dsundaram.basicnd SET [	Ever told you have prediabetes?	]= 'Yes' WHERE [	Ever told you have prediabetes?	]= '1'; 
UPDATE dsundaram.basicnd SET [	Ever told you have prediabetes?	]= 'No' WHERE [	Ever told you have prediabetes?	]= '2'; 
UPDATE dsundaram.basicnd SET [	Ever told you have prediabetes?	]= 'Refused' WHERE [	Ever told you have prediabetes?	]= '7';
UPDATE dsundaram.basicnd SET [	Ever told you have prediabetes?	]= 'Dont know' WHERE [	Ever told you have prediabetes?	]= '9';  
UPDATE dsundaram.basicnd SET [	Ever told you have prediabetes?	]= 'Not Applicable' WHERE [	Ever told you have prediabetes?	] IS NULL; 

--health risk
UPDATE dsundaram.basicnd SET [	Health risks for diabetes?	]= 'Yes' WHERE [	Health risks for diabetes?	]= '1'; 
UPDATE dsundaram.basicnd SET [	Health risks for diabetes?	]= 'No' WHERE [	Health risks for diabetes?	]= '2'; 
UPDATE dsundaram.basicnd SET [	Health risks for diabetes?	]= 'Refused' WHERE [	Health risks for diabetes?	]= '7'; 
UPDATE dsundaram.basicnd SET [	Health risks for diabetes?	]= 'Dont know' WHERE [	Health risks for diabetes?	]= '9'; 
UPDATE dsundaram.basicnd SET [	Health risks for diabetes?	]= 'Not Applicable' WHERE [	Health risks for diabetes?	] IS NULL; 

--Feel at risk?
UPDATE dsundaram.basicnd SET [	Feeling you could be at risk for diabetes?]= 'Yes' WHERE [	Feeling you could be at risk for diabetes?] = '1'; 
UPDATE dsundaram.basicnd SET [	Feeling you could be at risk for diabetes?]= 'No' WHERE [	Feeling you could be at risk for diabetes?] = '2'; 
UPDATE dsundaram.basicnd SET [	Feeling you could be at risk for diabetes?]= 'Refused' WHERE [	Feeling you could be at risk for diabetes?] = '7'; 
UPDATE dsundaram.basicnd SET [	Feeling you could be at risk for diabetes?]= 'Dont know' WHERE [	Feeling you could be at risk for diabetes?] = '9'; 
UPDATE dsundaram.basicnd SET [	Feeling you could be at risk for diabetes?]= 'Not Applicable' WHERE [	Feeling you could be at risk for diabetes?] IS NULL; 

--Family History
UPDATE dsundaram.basicnd SET [	Family History]= 'Yes' WHERE [	Family History] = '10'; 
UPDATE dsundaram.basicnd SET [	Family History]= 'Refused' WHERE [	Family History] = '77'; 
UPDATE dsundaram.basicnd SET [	Family History]= 'Dont know' WHERE [	Family History] = '99'; 
UPDATE dsundaram.basicnd SET [	Family History]= '--' WHERE [	Family History] IS NULL; 
--Overweight 
UPDATE dsundaram.basicnd SET [	Overweight]= 'Yes' WHERE [	Overweight] = '11'; 
UPDATE dsundaram.basicnd SET [	Overweight]= '--' WHERE [	Overweight] IS NULL; 

--Age
UPDATE dsundaram.basicnd SET [	Age]= 'Yes' WHERE [	Age] = '12'; 
UPDATE dsundaram.basicnd SET [	Age]= '--' WHERE [	Age] IS NULL; 

--Poor diet
UPDATE dsundaram.basicnd SET [	Poor Diet]= 'Yes' WHERE [	Poor Diet] = '13'; 
UPDATE dsundaram.basicnd SET [	Poor Diet]= '--' WHERE [	Poor Diet] IS NULL; 

--Race
UPDATE dsundaram.basicnd SET [	Race]= 'Yes' WHERE [	Race] = '14'; 
UPDATE dsundaram.basicnd SET [	Race]= '--' WHERE [	Race] IS NULL; 

--Baby over 9 lbs
UPDATE dsundaram.basicnd SET [	Had baby weight >9 lbs at birth]= 'Yes' WHERE [	Had baby weight >9 lbs at birth] = '15'; 
UPDATE dsundaram.basicnd SET [	Had baby weight >9 lbs at birth]= '--' WHERE [	Had baby weight >9 lbs at birth] IS NULL; 

--lack of physical activity
UPDATE dsundaram.basicnd SET [	Lack of physical activity]= 'Yes' WHERE [	Lack of physical activity] = '16'; 
UPDATE dsundaram.basicnd SET [	Lack of physical activity]= '--' WHERE [	Lack of physical activity] IS NULL; 

--High BP
UPDATE dsundaram.basicnd SET [	High BP]= 'Yes' WHERE [	High BP] = '17'; 
UPDATE dsundaram.basicnd SET [	High BP]= '--' WHERE [	High BP] IS NULL; 

--High blood sugar
UPDATE dsundaram.basicnd SET [	High blood sugar]= 'Yes' WHERE [	High blood sugar] = '18'; 
UPDATE dsundaram.basicnd SET [	High blood sugar]= '--' WHERE [	High blood sugar] IS NULL; 

--High cholesterol
UPDATE dsundaram.basicnd SET [	High Cholesterol]= 'Yes' WHERE [	High Cholesterol] = '19'; 
UPDATE dsundaram.basicnd SET [	High Cholesterol]= '--' WHERE [	High Cholesterol] IS NULL; 

--Hypoglycemic
UPDATE dsundaram.basicnd SET [	Hypoglycemic]= 'Yes' WHERE [	Hypoglycemic] = '20'; 
UPDATE dsundaram.basicnd SET [	Hypoglycemic]= '--' WHERE [	Hypoglycemic] IS NULL; 

--Extreme Hunger
UPDATE dsundaram.basicnd SET [	Extreme hunger]= 'Yes' WHERE [	Extreme hunger] = '21'; 
UPDATE dsundaram.basicnd SET [	Extreme hunger]= '--' WHERE [	Extreme hunger] IS NULL; 

--Tngling/numbess in feet
UPDATE dsundaram.basicnd SET [	Tingling/numbness in hands/feet]= 'Yes' WHERE [	Tingling/numbness in hands/feet] = '22'; 
UPDATE dsundaram.basicnd SET [	Tingling/numbness in hands/feet]= '--' WHERE [	Tingling/numbness in hands/feet] IS NULL; 

--Blurred vision
UPDATE dsundaram.basicnd SET [	Blurred vision]= 'Yes' WHERE [	Blurred vision] = '23'; 
UPDATE dsundaram.basicnd SET [	Blurred vision]= '--' WHERE [	Blurred vision] IS NULL; 

--Increased fatigue
UPDATE dsundaram.basicnd SET [	Increased fatigue]= 'Yes' WHERE [	Increased fatigue] = '24'; 
UPDATE dsundaram.basicnd SET [	Increased fatigue]= '--' WHERE [	Increased fatigue] IS NULL; 

--Anyone could be at risk
UPDATE dsundaram.basicnd SET [	Anyone could be at risk]= 'Yes' WHERE [	Anyone could be at risk] = '25'; 
UPDATE dsundaram.basicnd SET [	Anyone could be at risk]= '--' WHERE [	Anyone could be at risk] IS NULL; 

--Doctor
UPDATE dsundaram.basicnd SET [	Doctor warning]= 'Yes' WHERE [	Doctor warning] = '26'; 
UPDATE dsundaram.basicnd SET [	Doctor warning]= '--' WHERE [	Doctor warning] IS NULL; 

--Other
UPDATE dsundaram.basicnd SET [	Other]= 'Yes' WHERE [	Other] = '27'; 
UPDATE dsundaram.basicnd SET [	Other]= '--' WHERE [	Other] IS NULL; 
--Gestational diabetes
UPDATE dsundaram.basicnd SET [	Gestational diabetes]= 'Yes' WHERE [	Gestational diabetes] = '28'; 
UPDATE dsundaram.basicnd SET [	Gestational diabetes]= '--' WHERE [	Gestational diabetes] IS NULL; 

--Frequent urination
UPDATE dsundaram.basicnd SET [	Frequent urination]= 'Yes' WHERE [	Frequent urination] = '29'; 
UPDATE dsundaram.basicnd SET [	Frequent urination]= '--' WHERE [	Frequent urination] IS NULL; 

--Thirst
UPDATE dsundaram.basicnd SET [	Thirst]= 'Yes' WHERE [	Thirst] = '30'; 
UPDATE dsundaram.basicnd SET [	Thirst]= '--' WHERE [	Thirst] IS NULL; 

--Craving for sugars
UPDATE dsundaram.basicnd SET [	Craving sugar]= 'Yes' WHERE [	Craving sugar] = '31'; 
UPDATE dsundaram.basicnd SET [	Craving sugar]= '--' WHERE [	Craving sugar] IS NULL; 

--Medication
UPDATE dsundaram.basicnd SET [	Medication]= 'Yes' WHERE [	Medication] = '32'; 
UPDATE dsundaram.basicnd SET [	Medication]= '--' WHERE [	Medication] IS NULL; 

--Ovarian syndrome
UPDATE dsundaram.basicnd SET [	Polycystic ovarian syndrome]= 'Yes' WHERE [	Polycystic ovarian syndrome] = '33'; 
UPDATE dsundaram.basicnd SET [	Polycystic ovarian syndrome]= '--' WHERE [	Polycystic ovarian syndrome] IS NULL; 

--Had blood tested
UPDATE dsundaram.basicnd SET [	Had blood tested in past 3 years?]= 'Yes' WHERE [	Had blood tested in past 3 years?] = '1'; 
UPDATE dsundaram.basicnd SET [	Had blood tested in past 3 years?]= 'No' WHERE [	Had blood tested in past 3 years?] = '2'; 
UPDATE dsundaram.basicnd SET [	Had blood tested in past 3 years?]= 'Refused' WHERE [	Had blood tested in past 3 years?] = '7'; 
UPDATE dsundaram.basicnd SET [	Had blood tested in past 3 years?]= 'Dont know' WHERE [	Had blood tested in past 3 years?] = '9'; 
UPDATE dsundaram.basicnd SET [	Had blood tested in past 3 years?]= 'Not Applicable' WHERE [	Had blood tested in past 3 years?] IS NULL; 

--Taking insulin
UPDATE dsundaram.basicnd SET [	Taking insulin?]= 'Yes' WHERE [	Taking insulin?]= '1';
UPDATE dsundaram.basicnd SET [	Taking insulin?]= 'No' WHERE [	Taking insulin?]= '2';
UPDATE dsundaram.basicnd SET [	Taking insulin?]= 'Refused' WHERE [	Taking insulin?]= '7';
UPDATE dsundaram.basicnd SET [	Taking insulin?]= 'Dont Know' WHERE [	Taking insulin?]= '9';
UPDATE dsundaram.basicnd SET [	Taking insulin?]= 'Not Applicable' WHERE [	Taking insulin?] IS NULL;

--Taking insulin duration
UPDATE dsundaram.basicnd SET [	Insulin intake duration]= 'Refused' WHERE [	Insulin intake duration]= '777';
UPDATE dsundaram.basicnd SET [	Insulin intake duration]= 'Dont Know' WHERE [	Insulin intake duration]= '999';
UPDATE dsundaram.basicnd SET [	Insulin intake duration]= 'Less than 1 month' WHERE [	Insulin intake duration]= '666';
UPDATE dsundaram.basicnd SET [	Insulin intake duration]= 'Not Applicable' WHERE [	Insulin intake duration] IS NULL;

--unit of measure
UPDATE dsundaram.basicnd SET [	Unit of measure for insulin intake]= 'Months' WHERE [	Unit of measure for insulin intake]= '1';
UPDATE dsundaram.basicnd SET [	Unit of measure for insulin intake]= 'Years' WHERE [	Unit of measure for insulin intake]= '2';
UPDATE dsundaram.basicnd SET [	Unit of measure for insulin intake]= 'Not Applicable' WHERE [	Unit of measure for insulin intake] IS NULL;

--Diabetic pills
UPDATE dsundaram.basicnd SET [Take diabetic pills to lower blood sugar?]= 'Yes' WHERE [Take diabetic pills to lower blood sugar?]= '1';
UPDATE dsundaram.basicnd SET [Take diabetic pills to lower blood sugar?]= 'No' WHERE [Take diabetic pills to lower blood sugar?]= '2';
UPDATE dsundaram.basicnd SET [Take diabetic pills to lower blood sugar?]= 'Refused' WHERE [Take diabetic pills to lower blood sugar?]= '7';
UPDATE dsundaram.basicnd SET [Take diabetic pills to lower blood sugar?]= 'Dont Know' WHERE [Take diabetic pills to lower blood sugar?]= '9';
UPDATE dsundaram.basicnd SET [Take diabetic pills to lower blood sugar?]= 'Not Applicable' WHERE [Take diabetic pills to lower blood sugar?] IS NULL;

-------------
---Combining two columns - Optional
select top 10  concat([	Insulin intake duration	], ' ',[Unit of measure for insulin	] ) as [Combined insulin intake duration over time] from dsundaram.basicd

-------------------
----Verify Counts
select EnrollmentGroup,count(EncounterCode) as [Number of records]
from
dsundaram.diabetics
group by EnrollmentGroup
order by count(EncounterCode) desc
--Example 1
UPDATE dsundaram.DIQ_I SET [DIQ010]= 'Yes' WHERE [DIQ010]= '1'; --Parameters being assigned
UPDATE dsundaram.DIQ_I SET [DIQ010]= 'No' WHERE [DIQ010]= '2';
UPDATE dsundaram.DIQ_I SET [DIQ010]= 'Borderline' WHERE [DIQ010]= '3';
UPDATE dsundaram.DIQ_I SET [DIQ010]= 'Refused' WHERE [DIQ010]= '7';
UPDATE dsundaram.DIQ_I SET [DIQ010]= 'Dont know' WHERE [DIQ010]= '9';

select DIQ010 as [Value Description], count(DIQ010) as [Records] from dsundaram.DIQ_I group by DIQ010 

-- Example 2

UPDATE [dsundaram].[DIQ_I] SET [DIQ070]= 'Yes' WHERE [DIQ070]= '1';
UPDATE [dsundaram].[DIQ_I] SET [DIQ070]= 'No' WHERE [DIQ070]= '2';
UPDATE [dsundaram].[DIQ_I] SET [DIQ070]= 'Refused' WHERE [DIQ070]= '7';
UPDATE [dsundaram].[DIQ_I] SET [DIQ070]= 'Dont Know' WHERE [DIQ070]= '9';
UPDATE [dsundaram].[DIQ_I] SET [DIQ070]= 'Missing' WHERE [DIQ070] IS NULL;

select DIQ070 as [Value Description], count(DIQ070) as [Records] from dsundaram.DIQ_I group by DIQ070 




select * from dsundaram.basicd

select * from dsundaram.basicd