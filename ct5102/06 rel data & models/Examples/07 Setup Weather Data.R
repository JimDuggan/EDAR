library(readr)
library(tidyr)
library(dplyr)
library(lubridate)

wave <- read_csv(file = "06 rel data & models/WaveData/WaveData.csv")

wave <- separate(wave,Time,c("Date","Time"),sep=" ")
wave <- separate(wave,Time,c("Hour","Minute"),sep=":")

weather <- read_csv(file = "06 rel data & models/WaveData/WeatherData.csv")

weather <- separate(weather,Time,c("Date","Time"),sep=" ")
weather <- separate(weather,Time,c("Hour","Minute"),sep=":")

write_csv(wave,"06 rel data & models/WaveData/Wave.csv")
write_csv(weather,"06 rel data & models/WaveData/Weather.csv")




