library(readr)
library(lubridate)

data <- read_csv("07 tidyr & lubridate/Examples/WaveData.csv")

data <- mutate(data,DateTime=dmy_hm(Time)) %>% 
         select(DateTime,everything())

difftime(data$Time,lag(data$Time),units="secs")
