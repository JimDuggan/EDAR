# NA - a missing value (Not available)
# NaN - Not a number (impossible mathematical values)

v<-c(1:8,NA,10)

is.na(v)

v[is.na(v)]<--1

# challenge... replace missing values with an average of their neighbours



anyNA(v)

age<-c(18,27,31,18,26)
q1<-c(4,2,1,4,5)
q2<-c(1,NA,1,4,3)
q3<-c(4,4,5,4,5)
q4<-c(4,3,3,2,1)
q5<-c(3,NA,1,3,5)

df<-data.frame(age,q1,q2,q3,q4,q5)

complete.cases(df)

df[complete.cases(df),]

na.omit(df)

is.na(df[,1:ncol(df)])

is.na(df)




 


