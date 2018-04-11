library(readr)
library(lubridate)
library(dplyr)

wd <- read_csv("07 tidyr & lubridate/Examples/WaveData.csv")

wd <- mutate(wd,DateTime=dmy_hm(Time),
          HourOfDay=hour(DateTime),
          WeekDay=wday(DateTime,label = T)) %>% 
    select(DateTime,HourOfDay,WeekDay,everything())

wh <- wd %>% group_by(HourOfDay) %>% summarise(AvHeight=mean(Havg_m))


ggplot(wh,aes(x=HourOfDay,y=AvHeight))+geom_point()+geom_line()



