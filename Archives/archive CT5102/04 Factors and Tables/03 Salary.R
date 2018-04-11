s<-data.frame(gender=c("Male","Male","Female","Male","Female","Female"),
              age=c(47,59,21,32,33,24),
              income=c(55000,88000,32450,76500,123000,45650))

#get the average income by gender

tapply(s$income,s$gender,mean)

# we can apply a pair of factors

s$age.status<-factor(ifelse(s$age>25,">25","<=25"))

tapply(s$income,list(s$gender,s$over25),mean)

