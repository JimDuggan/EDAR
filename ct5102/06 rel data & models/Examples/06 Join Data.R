library(readr)
library(ggplot2)
library(lubridate)

ener <- read_csv(file = "06 rel data & models/Examples/Energy.csv")

wth <- read_csv(file = "06 rel data & models/Examples/Mac Head Wind Data.csv")



avr_daily_wind_gen <- ener %>% group_by(Date) %>% 
                               summarise(AverageWindGeneration=mean(Wind))


merged <- left_join(avr_daily_wind_gen,wth)

ggplot(data = merged,mapping = aes(x=AVRWind,y=AverageWindGeneration)) +
  geom_point() +
  geom_smooth()+
  xlab("Average Wind Speed (Mace Head)") + ylab("Average Wind Generation") + 
  ggtitle("Wind Speed v Wind Power Generated")

ggplot(data = merged,mapping = aes(x=AVRWind,y=AverageWindGeneration)) +
  geom_point() +
  geom_smooth(method="lm")+
  xlab("Average Wind Speed (Mace Head)") + ylab("Average Wind Generation") + 
  ggtitle("Wind Speed v Wind Power Generated")

mod <- lm(data = merged,AverageWindGeneration~AVRWind)

p1 <- predict(mod,newdata = data.frame(AVRWind=25))

p2 <- predict(mod,newdata = data.frame(AVRWind=30))
