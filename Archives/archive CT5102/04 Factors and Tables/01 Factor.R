x<-c(5,12,13,12)
xf<-factor(x)

str(xf)
unclass(xf)

l<-sample(LETTERS,1000000,replace=T)
lf<-factor(l)

ages<-c(14,23,45,23,18,19,20,21,22)
gender<-factor(c("M","M","M","M","F","F","F","F","F"))

d<-data.frame(Age=ages,Gender=gender)

tapply(d$Age,d$Gender,mean)

split(d$Age,d$Gender)

# example of data needed...

patientID<-c(1,2,3,4)
age<-c(25,34,28,52)
diabetes<-c("Type1","Type2","Type1","Type1")
status<-c("Poor","Improved","Excellent","Poor")

status<-factor(status,levels=c("Poor","Improved","Excellent"))
diabetes<-factor(diabetes)

pd<-data.frame(patientID,age,diabetes,status)

summary(pd)

pop<-factor(sample(c("Male","Female"),200,replace=T))


table(pop)


qplot(pd,x=age,y=diabetes,color=status)

ids<-sample(1000:9999,10)

s<-sample(c('M','F'),100,replace=T,prob=c(0.9,.1))

# gl function is useful
f<-gl(2, 2, 20,labels = c("Control", "Treat"))


