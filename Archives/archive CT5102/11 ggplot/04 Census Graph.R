library(gdata) 
library(reshape)
library(ggplot2)

c <- read.xls("11 ggplot/Census.xlsx",stringsAsFactors=F)

d<-melt(c,id.vars = "Year")
names(d)<-c("Year","Cohort","Population")

ggplot(data=d,aes(x=Year,y=Population,fill=Cohort))+geom_area()
