ids_init<-sample(100000:999999,100)
ids<-gl(100,1,500,ids_init)
subject<-gl(5,100,500,c("CT101","CT201","CT301","CT401","CT501"))
set.seed(111)
ct101<- round(rnorm(100,mean = 49,sd = 10),0)
ct102<- round(rnorm(100,mean = 55,sd = 7),0)
ct103<- round(rnorm(100,mean = 55,sd = 7),0)
ct104<- round(rnorm(100,mean = 65,sd = 10),0)
ct105<- round(rnorm(100,mean = 72,sd = 7),0)
grades<-c(ct101,ct102,ct103,ct104,ct105)

df<-data.frame(ids,subject,grades)
tapply(df$grades,df$ids,mean)
tapply(df$grades,df$subject,mean)
tapply(df$grades,df$ids,min)
tapply(df$grades,df$subject,min)
tapply(df$grades,df$ids,max)
tapply(df$grades,df$subject,max)

qplot(data=df,x=subject,y=grades,geom="boxplot")





