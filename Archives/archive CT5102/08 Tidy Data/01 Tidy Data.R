library(gdata) 
library(reshape2)
library(dplyr)
library(plyr)
library(ggplot2)

c.mf <- read.xls("08 Tidy Data/Census2011MF.xlsx")

names(c.mf)<-c("Gender","0-14","15-24","25-44","45-64","65+")
cn<-melt(c.mf,id.vars = "Gender")
names(cn)<-c("Gender","Cohort","Population")

ddply(cn, .(Gender), 
           summarize, 
           Total= sum(Population))

ddply(cn, .(Cohort), 
           summarize, 
           Total=sum(Population))

#qplot(data=c.mf.tidy,x=Gender,color=Cohort,geom="line")


g1<-qplot(x=Cohort, y=Population, fill=Gender,data=cn, geom="bar",  stat="identity")
g2<-qplot(x=Gender, y=Population, fill=Cohort,data=cn, geom="bar",  stat="identity")


c.p <- read.xls("08 Tidy Data/Census2011Provinces.xlsx")
cp<-melt(c.p,id.vars="Gender")
names(cp)<-c("Gender","Province","Population")
g1<-qplot(x=Province, y=Population, fill=Gender,data=cp, geom="bar",  stat="identity")

ddply(cp,.(Province),summarize,Total=sum(Population))


# Data manipulation with dplyr

# select statement
select(cn,Population)
select(cn,-Cohort)


# filter command
filter(cn,Gender=="Male" & Cohort =="0-14")
filter(cn,Gender=="Male") %>% filter(Cohort=="0-14")
filter(cn,Cohort %in% c("0-14"))

arrange(cn,desc(Population))
arrange(cn,Cohort,desc(Population))

mutate(cn,Percentage=Population/sum(Population))

summarise(cn,total=sum(Population))

by_gender<-group_by(cn,Gender)
summarise(by_gender,total=sum(Population))

by_cohort<-group_by(cn,Cohort)
summarise(by_cohort,total=sum(Population))

filter(cn,Gender=="Male") %>% filter(Cohort=="0-14")

filter(cn,Gender=="Male") %>% filter(Population==max(Population))






