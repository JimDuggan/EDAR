
ids<-sample(1000:9999,1000)

age<-sample(20:65,1000,replace=T)

diabetes<-sample(c("Type 1", "Type 2"),1000,
                 replace=T,prob=c(.7,.3))

gender<-sample(c("Male","Female"),1000,replace=T,prob=c(.6,.4))

status<-sample(c("Poor","Improved","Excellent"),
               1000,replace=T,prob=c(.3,.4,.3))

df<-data.frame(ids,age,diabetes,status,gender)

qplot(data=df,x=age,y=status,color=gender)

t1<-table(df$status)
t2<-table(df$gender,df$status)
t3<-table(df$gender,df$status,df$diabetes)




