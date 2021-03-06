# Data Wrangling Projects





## Overview


Project 1 goes over the basics of data wrangling in SQL with a clinical data table. Categorical variables are renamed to allow for better interpretation (sex, customer status etc.) and columns are better named. Age is grouped into group rather discrete values to allow for better interpretation, potentially through graphing. 

Project 2 expands upon project 1, by incorporating a phone call/message database and more complex wrangling operations are performed (renaming categorical variables). The number of instances for each key value (in our case, this was the ID), were obtained across a range of variables (Call number etc.). The initial table was merged with another table to expand our records, and similar renaming was done (call types). The texts were grouped per week and by type of sender to allow for better interpretation. Similarly, the texts were sorted by chronic condition. 

Project 3 takes our experience in Data wrangling from SQL to R. A lot of the tedious operations in SQL are merely a line or two in R. I perform basic arithmetic operations with an inbuilt dataset within R, and try to extract the incidence rate for a disease across countries. The original table is presented in such a form, that columns had to be modified, and several dplyr and tidyr functions had to be employed. 

I then move to another in-built dataset (nycflights13), and try to visualize the daily departure times of flights for a single year. I verify the integrity of the dataset by performing cross validation and then try to explain the discrepancies. Along a similar line, I was asked to confirm a hypothesis, that flights across specific ranges in a hour are more likely to leave early. To close up, a basic web scraping across basic html nodes are performed.

The midterm project is open ended. I was given a diabetes dataset taken containing their cross sectional survey answers across thousands of patients. Not all of them were diabetic, and their answers differed accordingly. I identified a pattern to help clean the data, and rows that contributed nothing for our purpose were deleted. The knowledge acquired with the previous projects, were put into action. Columns and factors were renamed. Data issues of this dataset were identified, and the appropriate actions were performed and reasoned out. The primary goal of this project was to show that the required operations could be performed in both R and SQL. 

The final project, involves a similar clinical dataset for BP patients who enrolled in an intervention study. Their (mostly) hourly Systolic and Diastolic scores were provided, across hundreds of patients. Columns were renamed, and given categorical variables were renamed and then in turn converted into dichotomous outcomes. A simply merge was performed across two datasets. Then, each participant’s scores were averaged per week and then provided as a table. I then compare their scores at baseline and then at their follow-up period (12 weeks for example). Since we converted their status into dichotomous outcomes (essentially good or bad), we could see the potentially beneficial result of this intervention study and see how many participants went from bad to good within the follow up period. Three tables are merged across a common key value (ID) and then the latest text sent date was extracted. The requirement was that there be only one row per ID, so use of ranks to break ties between duplicate dates across the rows were required. The same operation was then performed in R. The tables stored on the SQL server were accessed through the use of ODBC. 
