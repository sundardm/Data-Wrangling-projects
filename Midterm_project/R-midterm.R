library(rio)
library(mice)
library(dplyr)

x <- import("DIQ_I.XPT")

damn <- import("diab_f.xlsx")
damn %>% unite_("damn", c("How_often_do_you_check_feet_", "Unit_of_measure_for_feet_check"), sep = " ")
print( head(x))

y <- x
implol <- mice(y,Method = "rfcat")
implol1

y_new <- y[rowSums(is.na(y)) != 51,] #Deleting rows that contribute nothing
y_new1 <- y_new[rowSums(is.na(y_new)) != 47,]
y_new2 <- y_new1[rowSums(is.na(y_new1)) != 50,]

data.frame(table(y$DIQ010)) #COUNTS

y_final <- y %>% filter(rowSums(is.na(y)) != c(51) & rowSums(is.na(y)) != 47 & rowSums(is.na(y)) != 50)

#NAs

y_final[is.na(y_final)] = "Not Applicable"


y_final$DIQ175A[y_final$DIQ175A == "Not Applicable"] = "--"
y_final$DIQ175B[y_final$DIQ175B == "Not Applicable"] = "--"
y_final$DIQ175C[y_final$DIQ175C == "Not Applicable"] = "--"
y_final$DIQ175D[y_final$DIQ175D == "Not Applicable"] = "--"
y_final$DIQ175E[y_final$DIQ175E == "Not Applicable"] = "--"
y_final$DIQ175F[y_final$DIQ175F == "Not Applicable"] = "--"
y_final$DIQ175G[y_final$DIQ175G == "Not Applicable"] = "--"
y_final$DIQ175H[y_final$DIQ175H == "Not Applicable"] = "--"
y_final$DIQ175I[y_final$DIQ175I == "Not Applicable"] = "--"
y_final$DIQ175J[y_final$DIQ175J == "Not Applicable"] = "--"
y_final$DIQ175K[y_final$DIQ175K == "Not Applicable"] = "--"
y_final$DIQ175L[y_final$DIQ175L == "Not Applicable"] = "--"
y_final$DIQ175M[y_final$DIQ175M == "Not Applicable"] = "--"
y_final$DIQ175N[y_final$DIQ175N == "Not Applicable"] = "--"
y_final$DIQ175O[y_final$DIQ175O == "Not Applicable"] = "--"
y_final$DIQ175P[y_final$DIQ175P == "Not Applicable"] = "--"
y_final$DIQ175Q[y_final$DIQ175Q == "Not Applicable"] = "--"
y_final$DIQ175R[y_final$DIQ175R == "Not Applicable"] = "--"
y_final$DIQ175S[y_final$DIQ175S == "Not Applicable"] = "--"
y_final$DIQ175T[y_final$DIQ175T == "Not Applicable"] = "--"
y_final$DIQ175U[y_final$DIQ175U == "Not Applicable"] = "--"
y_final$DIQ175V[y_final$DIQ175V == "Not Applicable"] = "--"
y_final$DIQ175W[y_final$DIQ175W == "Not Applicable"] = "--"
y_final$DIQ175X[y_final$DIQ175X == "Not Applicable"] = "--"


#DIQ010

y_final$DIQ010[y_final$DIQ010 == "2"] = "No"
y_final$DIQ010[y_final$DIQ010 == "1"] = "Yes"
y_final$DIQ010[y_final$DIQ010 == "3"] = "Borderline"
y_final$DIQ010[y_final$DIQ010 == "7"] = "Refused"
y_final$DIQ010[y_final$DIQ010 == "9"] = "Dont Know"


#DID040
y_final$DID040[y_final$DID040 == "80"] = "80 years or older"
y_final$DID040[y_final$DID040 == "666"] = "Less than 1 year"
y_final$DID040[y_final$DID040 == "777"] = "Refused"
y_final$DID040[y_final$DID040 == "999"] = "Dont know"


#DIQ160
y_final$DIQ160[y_final$DIQ160 == "1"] = "Yes"
y_final$DIQ160[y_final$DIQ160 == "2"] = "No"
y_final$DIQ160[y_final$DIQ160 == "7"] = "Refused"
y_final$DIQ160[y_final$DIQ160 == "9"] = "Dont know"

#DIQ170
y_final$DIQ170[y_final$DIQ170 == "1"] = "Yes"
y_final$DIQ170[y_final$DIQ170 == "2"] = "No"
y_final$DIQ170[y_final$DIQ170 == "7"] = "Refused"
y_final$DIQ170[y_final$DIQ170 == "9"] = "Dont know"

#DIQ172
y_final$DIQ172[y_final$DIQ172 == "1"] = "Yes"
y_final$DIQ172[y_final$DIQ172 == "2"] = "No"
y_final$DIQ172[y_final$DIQ172 == "7"] = "Refused"
y_final$DIQ172[y_final$DIQ172 == "9"] = "Dont know"

#DIQ175A
y_final$DIQ175A[y_final$DIQ175A == "10"] = "Family History"
y_final$DIQ175A[y_final$DIQ175A == "77"] = "Refused"
y_final$DIQ175A[y_final$DIQ175A == "99"] = "Dont know"

#DIQ175B
y_final$DIQ175B[y_final$DIQ175B == "11"] = "Overweight"

#DIQ175C
y_final$DIQ175C[y_final$DIQ175C == "12"] = "Age"

#DIQ175D
y_final$DIQ175D[y_final$DIQ175D == "13"] = "Poor diet"


#DIQ175E
y_final$DIQ175E[y_final$DIQ175E == "14"] = "Race"

#DIQ175F
y_final$DIQ175F[y_final$DIQ175F == "15"] = "Had baby weigh over 9lbs at birth"

#DIQ175G
y_final$DIQ175G[y_final$DIQ175G == "16"] = "Lack of Physical activity"

#DIQ175H
y_final$DIQ175H[y_final$DIQ175H == "17"] = "High blood pressure"

#DIQ175I
y_final$DIQ175I[y_final$DIQ175I == "18"] = "High blood sugar"

#DIQ175J
y_final$DIQ175J[y_final$DIQ175J == "19"] = "High cholesterol"

#DIQ175K
y_final$DIQ175K[y_final$DIQ175K == "20"] = "Hypoglycemic"

#DIQ175L
y_final$DIQ175L[y_final$DIQ175L == "21"] = "Extreme hunger"

#DIQ175M
y_final$DIQ175M[y_final$DIQ175M == "22"] = "Tingling/numbness in hands or feet"

#DIQ175N
y_final$DIQ175N[y_final$DIQ175N == "23"] = "Blurred vision"

#DIQ175O
y_final$DIQ175O[y_final$DIQ175O == "24"] = "Increased fatigue"

#DIQ175P
y_final$DIQ175P[y_final$DIQ175P == "25"] = "Anyone could be at risk"

#DIQ175Q
y_final$DIQ175Q[y_final$DIQ175Q == "26"] = "Doctor warning"

#DIQ175R
y_final$DIQ175R[y_final$DIQ175R == "27"] = "Other,specify"

#DIQ175S
y_final$DIQ175S[y_final$DIQ175S == "28"] = "Gestational diabetes"

#DIQ175T
y_final$DIQ175T[y_final$DIQ175T == "29"] = "Frequent urination"

#DIQ175U
y_final$DIQ175U[y_final$DIQ175U == "30"] = "Thirst"

#DIQ175V
y_final$DIQ175V[y_final$DIQ175V == "31"] = "Craving for sweet/eating a lot of sugar"

#DIQ175W
y_final$DIQ175W[y_final$DIQ175W == "32"] = "Medication"

#DIQ175X
y_final$DIQ175X[y_final$DIQ175X == "33"] = "Polycystic ovarian syndrome"

#DIQ180
y_final$DIQ180[y_final$DIQ180 == "1"] = "Yes"
y_final$DIQ180[y_final$DIQ180 == "2"] = "No"
y_final$DIQ180[y_final$DIQ180 == "7"] = "Refused"
y_final$DIQ180[y_final$DIQ180 == "9"] = "Dont know"

#DIQ050
y_final$DIQ050[y_final$DIQ050 == "1"] = "Yes"
y_final$DIQ050[y_final$DIQ050 == "2"] = "No"
y_final$DIQ050[y_final$DIQ050 == "7"] = "Refused"
y_final$DIQ050[y_final$DIQ050 == "9"] = "Dont know"

#DIQ060
y_final$DIQ060[y_final$DIQ060 == "666"] = "Less than 1 month"
y_final$DIQ060[y_final$DIQ060 == "777"] = "Refused"
y_final$DIQ060[y_final$DIQ060 == "999"] = "Dont know"

#DIQ060U
y_final$DIQ060U[y_final$DIQ060U == "1"] = "Months"
y_final$DIQ060U[y_final$DIQ060U == "2"] = "Years"


#DIQ070
y_final$DIQ070[y_final$DIQ070 == "1"] = "Yes"
y_final$DIQ070[y_final$DIQ070 == "2"] = "No"
y_final$DIQ070[y_final$DIQ070 == "7"] = "Refused"
y_final$DIQ070[y_final$DIQ070 == "9"] = "Dont know"

#DIQ230
y_final$DIQ230[y_final$DIQ230 == "1"] = "1 year of less"
y_final$DIQ230[y_final$DIQ230 == "2"] = "More than 1 but less than 2 years"
y_final$DIQ230[y_final$DIQ230 == "3"] = "More than 2 but less than 5 years"
y_final$DIQ230[y_final$DIQ230 == "4"] = "More than 5 years"
y_final$DIQ230[y_final$DIQ230 == "5"] = "Never"
y_final$DIQ230[y_final$DIQ230 == "7"] = "Refused"
y_final$DIQ230[y_final$DIQ230 == "9"] = "Dont know"

#DIQ240
y_final$DIQ240[y_final$DIQ240 == "1"] = "Yes"
y_final$DIQ240[y_final$DIQ240 == "2"] = "No"
y_final$DIQ240[y_final$DIQ240 == "7"] = "Refused"
y_final$DIQ240[y_final$DIQ240 == "9"] = "Dont know"

#DID250
y_final$DID250[y_final$DID250 == "0"] = "None"
y_final$DID250[y_final$DID250 == "7777"] = "Refused"
y_final$DID250[y_final$DID250 == "9999"] = "Dont know"

#DID260
y_final$DID260[y_final$DID260 == "0"] = "None"
y_final$DID260[y_final$DID260 == "777"] = "Refused"
y_final$DID260[y_final$DID260 == "999"] = "Dont know"

#DIQ260U
y_final$DIQ260U[y_final$DIQ260U == "1"] = "Per day"
y_final$DIQ260U[y_final$DIQ260U == "2"] = "Per week"
y_final$DIQ260U[y_final$DIQ260U == "3"] = "Per month"
y_final$DIQ260U[y_final$DIQ260U == "4"] = "Per year"


#DIQ275
y_final$DIQ275[y_final$DIQ275 == "1"] = "Yes"
y_final$DIQ275[y_final$DIQ275 == "2"] = "No"
y_final$DIQ275[y_final$DIQ275 == "7"] = "Refused"
y_final$DIQ275[y_final$DIQ275 == "9"] = "Dont know"


#DIQ280
y_final$DIQ280[y_final$DIQ280 == "777"] = "Refused"
y_final$DIQ280[y_final$DIQ280 == "999"] = "Dont know"

#DIQ291
y_final$DIQ291[y_final$DIQ291 == "1"] = "Less than 6"
y_final$DIQ291[y_final$DIQ291 == "2"] = "Less than 7"
y_final$DIQ291[y_final$DIQ291 == "3"] = "Less than 8"
y_final$DIQ291[y_final$DIQ291 == "4"] = "Less than 9"
y_final$DIQ291[y_final$DIQ291 == "5"] = "Less than 10"
y_final$DIQ291[y_final$DIQ291 == "6"] = "Provider did not specify goal"
y_final$DIQ291[y_final$DIQ291 == "77"] = "Refused"
y_final$DIQ291[y_final$DIQ291 == "99"] = "Dont know"

#DIQ300S
y_final$DIQ300S[y_final$DIQ300S == "7777"] = "Refused"
y_final$DIQ300S[y_final$DIQ300S == "9999"] = "Dont know"

#DIQ300D
y_final$DIQ300D[y_final$DIQ300D == "7777"] = "Refused"
y_final$DIQ300D[y_final$DIQ300D == "9999"] = "Dont know"

#DID310S
y_final$DID310S[y_final$DID310S == "6666"] = "Provider did not specify goal"
y_final$DID310S[y_final$DID310S == "7777"] = "Refused"
y_final$DID310S[y_final$DID310S == "9999"] = "Dont know"

#DID310D
y_final$DID310D[y_final$DID310D == "6666"] = "Provider did not specify goal"
y_final$DID310D[y_final$DID310D == "7777"] = "Refused"
y_final$DID310D[y_final$DID310D == "9999"] = "Dont know"


#DID320
y_final$DID320[y_final$DID320 == "5555"] = "Never heard of LDL"
y_final$DID320[y_final$DID320 == "6666"] = "Never had cholesterol test"
y_final$DID320[y_final$DID320 == "7777"] = "Refused"
y_final$DID320[y_final$DID320 == "9999"] = "Dont know"

#DID330
y_final$DID330[y_final$DID330 == "6666"] = "Provider did not specify goal"
y_final$DID330[y_final$DID330 == "7777"] = "Refused"
y_final$DID330[y_final$DID330 == "9999"] = "Dont know"


#DID341
y_final$DID341[y_final$DID341 == "0"] = "None"
y_final$DID341[y_final$DID341 == "7777"] = "Refused"
y_final$DID341[y_final$DID341 == "9999"] = "Dont know/not sure"

#DID350
y_final$DID350[y_final$DID350 == "0"] = "None"
y_final$DID350[y_final$DID350 == "7777"] = "Refused"
y_final$DID350[y_final$DID350 == "9999"] = "Dont know/not sure"

#DIQ350U
y_final$DIQ350U[y_final$DIQ350U == "1"] = "Per day"
y_final$DIQ350U[y_final$DIQ350U == "2"] = "Per week"
y_final$DIQ350U[y_final$DIQ350U == "3"] = "Per month"
y_final$DIQ350U[y_final$DIQ350U == "4"] = "Per year"

#DIQ360
y_final$DIQ360[y_final$DIQ360 == "1"] = "Less than 1 month"
y_final$DIQ360[y_final$DIQ360 == "2"] = "1-12 months"
y_final$DIQ360[y_final$DIQ360 == "3"] = "12-24 months"
y_final$DIQ360[y_final$DIQ360 == "4"] = "Greater than 2 years"
y_final$DIQ360[y_final$DIQ360 == "5"] = "Never"
y_final$DIQ360[y_final$DIQ360 == "7"] = "Refused"
y_final$DIQ360[y_final$DIQ360 == "9"] = "Dont know"

#DIQ080
y_final$DIQ080[y_final$DIQ080 == "1"] = "Yes"
y_final$DIQ080[y_final$DIQ080 == "2"] = "No"
y_final$DIQ080[y_final$DIQ080 == "7"] = "Refused"
y_final$DIQ080[y_final$DIQ080 == "9"] = "Dont know"


#Convert each column in y_final to a factor based
y_final[] <- lapply(y_final,as.factor)   
#Printing example of levels now assigned
print (levels(y_final$DIQ180))

gg51 <- y[rowSums(is.na(y)) == 51,]
gg50 <- y[rowSums(is.na(y)) == 50,]
gg48 <-y[rowSums(is.na(y)) == 48,]
gg47<- y[rowSums(is.na(y)) == 47,]
gg %>% filter(DIQ170 == 1)
gg49 <- y[rowSums(is.na(y)) == 49,]
y %>% filter(DIQ010 == 9)

diabetics <- y_final %>% filter(DIQ010 == "Yes") %>% select(SEQN:DID040, DIQ050:DIQ080)
y_final %>% filter(DIQ170 == 1)
non_diabetics <- y_final %>% filter((DIQ010 == "No"| DIQ010 == "Borderline" | DIQ010 == "Dont Know")) %>% select(SEQN:DIQ010, DIQ160:DIQ070)
non_diabetics%>% filter(DIQ010 == 9)
implolb <- implol1
x3232 <- colnames(implolb)
implol1$did040[!(implol1$DIQ010 == 1),] = NA

newnamesd <- c("Responder Sequence Number", "Doctor told you have diabetes?","Age when first diagnosed (years)", "Taking insulin now?", "Insulin intake duration", "Unit of measure for insulin", "Take diabetic pills?", "How long ago did you see a diabetes specialist?","Do you have a preferred specialist?","Visits to this doctor in past year","How often do you check for blood sugar?","Unit of measure for blood sugar check","A1C check in the last year?","Last recorded A1C level","Recommended level","SBP level","DBP level","Recommended SBP", "Recommended DBP","LDL level","Recommended LDL","Times doctor checked feet for sores in past year","How often do you check feet?","Unit of measure for feet check","Last time had pupils dilated","Diabetes affected eyes/Retinopathy")
newnamesnd <- c("Responder Sequence Number", "Doctor told you have diabetes?", "Ever told you have prediabetes?","Health risks for diabetes?","Feeling you could be at risk for diabetes?","Family History","Overweight","Age","Poor Diet","Race","Had baby weight >9 lbs at birth","Lack of physical activity","High BP","High blood sugar","High Cholesterol", "Hypoglycemic","Extreme hunger","Tingling/numbness in hands/feet","Blurred vision","Increased fatigue","Anyone could be at risk","Doctor warning","Other","Gestational diabetes","Frequent urination","Thirst","Craving sugar","Medication","Polycystic ovarian syndrome","Had blood tested in past 3 years?","Taking insulin?","Insulin intake duration","Unit of measure for insulin intake" ,"Take diabetic pills to lower blood sugar?")
#export(x,"DIQ_I.xlsx")
colnames(diabetics) <- newnamesd
colnames(non_diabetics) <- newnamesnd
export(y_final, "try1.csv")

export(diabetics, "diabetics.csv")

export(non_diabetics, "non_diabetics.csv")
export(y, "basic.csv")
export(gg51, "gg51.csv")
export(gg50, "gg50.csv")
export(gg47, "gg47.csv")
export(gg48, "gg48.csv")
export(gg49, "gg49.csv")