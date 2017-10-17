# compute rate per 10,000
library(tidyverse)

table1 %>%
  mutate(rate=cases/population * 10000)

table1 %>% 
  group_by(year)  %>% summarise(Cases=sum(cases)) 

table4a %>% 
  gather('1999','2000',
         key="year",
         value="cases")


table3 %>% 
  separate(rate,into=c("cases","population"),
           convert=TRUE)

x <- table3 %>% 
      separate(rate,into=c("cases","population"),
               convert=TRUE)

unite(x,rate,cases,population,sep="/")








