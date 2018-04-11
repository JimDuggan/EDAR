library(tidyr)
library(dplyr)

# Added in separator for this solution so that tidyr can be used
month<-c("2005.M01","2005.M02","2005.M03","2005.M04")

nat.houses<-c(100,100.5,100.8,101.6)
dub.houses<-c(100,100.8,101.2,102.4)
ex.dub.houses<-c(100,100.3,100.6,101.2)

df1<-data.frame(month,nat.houses,dub.houses,ex.dub.houses)

df1 <- separate(df1, month, c("Year","Month") )

td <- gather(df1,key="House Type",value = "HPI",nat.houses:ex.dub.houses)

q1 <- filter(td,HPI < 100)

q2 <- group_by(td,Year) %>% summarise(Average=mean(HPI))

q3 <- group_by(td,HPI) %>% arrange(desc(HPI))

q4a <- filter(td,HPI==min(HPI)) %>% select(Year,Month,HPI)

q4b <- filter(td,HPI==max(HPI))  %>% select(Year,Month,HPI)



