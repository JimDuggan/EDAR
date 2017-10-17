library(dplyr)

x <- as_tibble(data.frame(
  name = c("John", "Paul", "George", "Ringo", "Stuart", "Pete"),
  instrument = c("guitar","bass","guitar","drums","bass","drums"),
  stringsAsFactors = F
))

y <- as_tibble(data.frame(
  name = c("John", "Paul", "George", "Ringo", "Brian"),
  band = c(T,T,T,T,F),
  stringsAsFactors = F
))


inner_join(x,y)

left_join(x,y)

right_join(x,y)

semi_join(x,y)

anti_join(x,y)

y


