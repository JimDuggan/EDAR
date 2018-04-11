library(gdata) 
library(reshape)
library(ggplot2)

c <- read.xls("03 Matrices and Data Frames/CensusData.xlsx")
c1 <- read.xls("03 Matrices and Data Frames/Assignment.xlsx",sheet=2)


c$AnnualTotal<-apply(c[,2:5],1,sum)

new<-melt(c,id.vars="Year",
            measure.vars=c("Leinster",
                           "Munster",
                           "Connacht",
                           "Ulster"))

names(new)<-c("Year","Province","Population")

qplot(data=new,x=Year,y=Population,color=Province,geom="line")

a<-aggregate(Population~Year,new,sum)

s<-split(new,new$Year)


