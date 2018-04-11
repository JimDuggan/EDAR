library(readr)
library(tidyr)
library(dplyr)
library(lubridate)

ener <- read_csv(file = "06 rel data & models/Examples/IrelandData January 2017.csv")

ener <- separate(ener,DateTime,c("Date","Time"),sep=" ",remove = F)

ener <- mutate(ener,
               DateTimeFM =  dmy_hm(DateTime),
               HourOfDay    =  hour(DateTime),
               MinuteOfDay  =  minute(DateTime),
               DayOfWeek    =  wday(DateTime,label=T))

ener <- select(ener,DateTime=DateTimeFM,Date,HourOfDay,MinuteOfDay,DayOfWeek,Demand,Generation,Wind,CO2,NetImports,EWIC,Moyle)


write_csv(ener,"06 rel data & models/Examples/Energy.csv")




