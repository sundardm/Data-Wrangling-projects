library(rio)
library(tidyverse)
library(lubridate)

bp <- import("try.csv")
bp$ObservedTime <-as.Date(bp$ObservedTime, "%m/%d/%Y")
bp$tri_enrollmentcompletedate <-as.Date(bp$tri_enrollmentcompletedate, "%m/%d/%Y")
bp1 <- bp %>% group_by(ID) %>% mutate(Week_elapsed = as.numeric(round(difftime(ObservedTime,min(ObservedTime),units = "weeks"),0))+1) %>% mutate(start = min(ObservedTime), end = max(ObservedTime))
##12 week interval  
## %in% goes through 1:12 and extracts each matching output. Summarize the results in average scores for each week for each customer
#note how many unique ID there are in q1d, and compared to bp1 (original table). They are 142 each.
q1d <- (bp1 %>% group_by(ID) %>% filter(Week_elapsed %in% unique(Week_elapsed)[1:12])) %>% summarise(Average_Systolic = mean(SystolicValue), Average_Diastolic = mean(Diastolicvalue))

q1check <- length(unique(q1d$ID))
bp1check <- length(unique(bp1$ID))
crosscheck <- length(intersect(q1d$ID, bp1$ID))  
print(paste("Crosscheck", q1check, bp1check, crosscheck))
head(q1d)

  
#Compare week 1 and week12
#Get customers that had a 12th absolute week with intervention
## I say absolute because some people dont use the intervention for 12 straight weeks
#but broken up into chunks that add up to 12 weeks.
week12<-(bp1 %>% group_by(ID) %>% filter(Week_elapsed == unique(Week_elapsed)[12])) 
#Drop them into list so we can extract their scores in Week 1 of use
list1 <- unique(week12$ID) #Taking IDs with week12
week1 <- bp1 %>% filter(ID %in% list1) %>%filter(Week_elapsed == 1) #Subsetting out week 1 for those with week 12
#Combining data set
weekF <- rbind(week1,week12) 

week12check <- length(unique(week12$ID))
crosscheck2 <- length(intersect(week1$ID,week12$ID)) #verify common elements
print(week12check,crosscheck2)

q1e <- weekF %>% group_by(ID,Week_elapsed) %>% summarise(s = mean(SystolicValue), d = mean(Diastolicvalue))
head(q1e)

#How many?

hmany <- weekF %>% group_by(ID, Week_elapsed) %>% select(ID, Week_elapsed, BPStatus) %>% summarise(BP = mean(as.numeric(BPStatus)))
#Spread columns
hmany1<-hmany %>%  spread(Week_elapsed,BP)  ##Only consider those with solid 0 and 1s in week 1 and 12 respectively
head(hmany1)
#Cresating new absolute week 12 column and condensing our table
hmany1$Week12 <- apply(hmany1[-1:-2], 1, function(x) paste(x[!is.na(x) & x != "No"], collapse = ", "));
#Setting parameters
#If they leaned towards uncontrolled (i.e. <0.5) in week 1, then they had uncontrolled.
#If they leaned towards controlled (i.e. > 0.5) in week 12, then they had controlled.
hmany2 <- hmany1 %>% select(ID, `1`, Week12) %>% filter(`1`< 0.5 & Week12 > 0.5)
head(hmany2)

print(paste("The number of customers who went from Uncontrolled in Week 1"))
print(paste("to Controlled BP in Absolute Week 12 is, "), nrow(hmany2))





#3
library(RODBC)
con <- odbcConnect("Dartmouth", uid = "dsundaram", pwd = 'dsundaram@qbs181')
data <- sqlFetch(con, "Demographics")
data2 <- sqlFetch(con,"ChronicConditions")
data3 <- sqlFetch(con,"Text")
colnames(data2) = c("contactid", "tri_name")
colnames(data3)[1] = "contactid"

data4<- merge(data,data2, by = "contactid")
data5<- merge(data4,data3, by="contactid") #final merged

#We only get one row for each ID. We have some duplicates because the date was repeated 
#for some IDs, so we use slice which takes only one row per ID. 
q3 <- data5 %>% group_by(contactid) %>% slice(which.max(TextSentDate)) #Solution

head(q3)
