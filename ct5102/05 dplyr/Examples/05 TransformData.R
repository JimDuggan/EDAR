library(readr)
library(tidyr)
library(dplyr)

d <- read_csv("05 dplyr/Examples/ExamDataBroad.csv")

nd <- gather(data=d,key = Subject,value = Grade,CX1000:CX1009)

write_csv(nd,"05 dplyr/Examples/ExamDataNarrow.csv")

