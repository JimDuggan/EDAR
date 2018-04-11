library(dplyr)


# flights
# airlines
# weather


glimpse(airlines)

glimpse(airports)

glimpse(planes)

glimpse(weather)

glimpse(flights)

flights2 <- flights %>%
  select(year:day,hour,origin,dest,dep_delay,tailnum,carrier)

jfk <- flights %>% filter(origin=="JFK",month==1)
comb <- jfk  %>% left_join(weather)

ggplot(comb,aes(x=temp,y=dep_delay))+geom_point()+geom_jitter()





