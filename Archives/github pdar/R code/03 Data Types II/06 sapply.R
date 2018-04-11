library(ggplot2)

x<-seq(-10,10,by=.1)

# 3x^2 - 3x + 3

y <- unlist(lapply(x, function(n)3*n^2-3*n+3))

y1 <- sapply(x, function(n,a,b,c)a*n^2+b*n+c,3,-3,3)

qplot(x,y)+geom_point(colour="blue")

quad <- function(a,b,c){
  sapply(x, function(n,a,b,c)a*n^2+b*n+c,a,b,c)
}

qplot(x)