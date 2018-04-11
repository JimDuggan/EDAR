library(readr)
library(ggplot2)

ener <- read_csv(file = "06 rel data & models/Examples/Energy.csv")

ggplot(data = ener) +
  geom_line(mapping = aes(x=DateTime,y=Generation)) +
  xlab("Date") + ylab("Generation") + ggtitle("Monthly Generation Data")

ggplot(data = ener) +
  geom_line(mapping = aes(x=DateTime,y=Generation),colour="blue") +
  geom_line(mapping = aes(x=DateTime,y=Wind),colour="green")+
  xlab("Date") + ylab("Generation") + ggtitle("Monthly Generation Data")


ggplot(data = filter(ener,Date=="01/02/17")) +
  geom_line(mapping = aes(x=DateTime,y=Generation)) +
  xlab("Time of Day") + ylab("Generation")+ 
  ggtitle("Generation Data for 1st Feb 2017")



ggplot(data = ener) +
  geom_point(mapping = aes(x=as.factor(HourOfDay),y=NetImports)) +
  xlab("Time (Hours)") + ylab("Net Imports") + 
  ggtitle("Time v Net Imports")

ggplot(data = ener) +
  geom_point(mapping = aes(x=Demand,y=NetImports)) +
  xlab("Demand") + ylab("Net Imports") + 
  ggtitle("Demand v Net Imports")

ggplot(data = ener) +
  geom_point(mapping = aes(x=Wind,y=CO2)) +
  xlab("Wind Generation") + ylab("CO2 Emissions") + 
  ggtitle("Wind Generation v CO2 Emissions")

ggplot(data = ener) +
  geom_point(mapping = aes(x=Wind,y=CO2,colour=DayOfWeek)) +
  xlab("Wind Generation") + ylab("CO2 Emissions") + 
  ggtitle("Wind Generation v CO2 Emissions")

ggplot(data = ener) +
  geom_point(mapping = aes(x=Wind,y=CO2,colour=DayOfWeek)) +
  facet_wrap(~DayOfWeek)+
  xlab("Wind Generation") + ylab("CO2 Emissions") + 
  ggtitle("Wind Generation v CO2 Emissions")



