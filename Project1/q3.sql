


ALTER TABLE dsundaram.assignment1 ADD Sex nvarchar(50); -- Creating new column
UPDATE dsundaram.assignment1 SET Sex = 'female' WHERE Gender = '2'; --Paramters being assigned
UPDATE dsundaram.assignment1 SET Sex = 'male' WHERE Gender = '1';
UPDATE dsundaram.assignment1 SET Sex = 'other' WHERE Gender = '167410000';
UPDATE dsundaram.assignment1 SET Sex = 'Unknown' WHERE Gender = 'NULL';

select top 10* from dsundaram.assignment1