f1 <- function(x){
  sqrt(x)
}


f2 <- function(x){
  x^3
}

y <- 9

x <- f1(y)

z <- f2(x)


f <- function(des, power){
  
  function(x){
    x^power
  }
}

sq <- f("This is a square function",2)

ans <- sq(6)

library(gdata) 


data <- read.xls("R code/10 Sample Questions/Data.xlsx")

library(dplyr)

td <- gather(data,key = Product,value=Sales,2:5)

by_year <- group_by(td, Year)

summarise(by_year, Total= sum(Sales))

by_product <- group_by(td, Product)
summarise(by_product, Total= sum(Sales))

by_product_year <- group_by(td, Product, Year)
summarise(by_product_year, Total= sum(Sales))



