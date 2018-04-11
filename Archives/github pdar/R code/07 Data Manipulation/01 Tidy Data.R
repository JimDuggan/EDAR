library(tidyr)
library(magrittr)

untidy <- data.frame(
  name = c("John Smith", "Jane Doe", "Mary Johnson"),
  treatmenta = c(NA, 16, 3),
  treatmentb = c(2, 11, 1)
)


tidy <- gather(untidy,key=Treatment,value=Outcome,treatmenta:treatmentb)

unsep <- data.frame(
  Date = c("Jan_2005","Jan_2006","Jan_2007"),
  Product = c("ABC","DEF","ABC"),
  Sales = c(1000, 2000, 3000)
)

df <- separate(unsep,Date,c("Year","Month"))






