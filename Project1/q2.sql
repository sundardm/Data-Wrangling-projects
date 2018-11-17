select * from dsundaram.assignment1


ALTER TABLE dsundaram.assignment1 ADD EnrollmentStatus nvarchar(50); --Creasting new column
UPDATE dsundaram.assignment1 SET EnrollmentStatus = 'Complete' WHERE tri_imaginecareenrollmentstatus = 167410011; --Parameters being assigned
UPDATE dsundaram.assignment1 SET EnrollmentStatus = 'Email sent' WHERE tri_imaginecareenrollmentstatus = 167410001;
UPDATE dsundaram.assignment1 SET EnrollmentStatus = 'Non responder' WHERE tri_imaginecareenrollmentstatus = 167410004;
UPDATE dsundaram.assignment1 SET EnrollmentStatus = 'Facilitated' WHERE tri_imaginecareenrollmentstatus = 167410005;
UPDATE dsundaram.assignment1 SET EnrollmentStatus = 'Incomplete' WHERE tri_imaginecareenrollmentstatus = 167410002;
UPDATE dsundaram.assignment1 SET EnrollmentStatus = 'Opted Out' WHERE tri_imaginecareenrollmentstatus = 167410003;
UPDATE dsundaram.assignment1 SET EnrollmentStatus = 'Unprocessed' WHERE tri_imaginecareenrollmentstatus = 167410000;
UPDATE dsundaram.assignment1 SET EnrollmentStatus = 'Second email sent' WHERE tri_imaginecareenrollmentstatus = 167410006;

select top 10* from dsundaram.assignment1