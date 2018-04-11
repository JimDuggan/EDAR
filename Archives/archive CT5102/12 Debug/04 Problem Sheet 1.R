
ids<-c(1233,1234,1235,1237,1238,1239)
role<-c("Graduate Engineer", "Graduate Engineer","Senior Engineer","Senior Engineer","Consulting Engineer","Consulting Engineer")
names<-c("J. Murphy","M. Smyth","P. Joyce","S. Kenny","B. Jones","D. Murray")
salary<-c(31000,38000,41000,43000,55800,65800)
date<-c("21/10/2013","21/10/2015","14/06/2012","11/05/2015","04/03/2009","04/06/2006")
projects<-c(5,3,8,5,34,54)

d<-data.frame(ID=ids,Name=names,Role=role,Salary=salary,Date=date,Projects=projects)

tapply(d$Salary,d$Role,mean)
tapply(d$Salary,d$Role,max)
tapply(d$Salary,d$Role,min)

d$Category<-ifelse(d$Projects<=5,"Low",ifelse(d$Projects<=15,"Medium","High"))
                  
