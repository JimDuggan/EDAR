library(readr)
library(tidyr)

d <- read_csv("07 tidyr & lubridate/Examples/ExamDataBroad.csv")

nd <- gather(data=d,key = Subject,value = Grade,CX1000:CX1009)