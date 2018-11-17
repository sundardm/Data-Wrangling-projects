


ALTER TABLE dsundaram.assignment1 ADD [Age Group] nvarchar(50); -- Creating new column
UPDATE dsundaram.assignment1 SET [Age Group] = '0-25' WHERE Age <=25 and Age >= 0; -- Parameters being assigned
UPDATE dsundaram.assignment1 SET [Age Group] = '26-50' WHERE Age <=50 and Age >= 26;
UPDATE dsundaram.assignment1 SET [Age Group] = '51-75' WHERE Age <=75 and Age >= 51;
UPDATE dsundaram.assignment1 SET [Age Group] = '76-100' WHERE Age <= 100 and Age >= 76;
UPDATE dsundaram.assignment1 SET [Age Group] = '101-125' WHERE Age <= 125 and Age >= 101;


select top 10* from dsundaram.assignment1