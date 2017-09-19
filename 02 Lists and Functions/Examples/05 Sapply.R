library(ggplot2)

# f(x) - ax^2 + b*x + c

x <- seq(-10,10,by=.25)

y <- sapply(x,function(x,a,b,c){a*x^2+b*x+c},2,-4,10)


