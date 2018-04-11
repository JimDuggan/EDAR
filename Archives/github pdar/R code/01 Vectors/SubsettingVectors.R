x<-1:5

x
x[1:2]
x[5]
x[5:1]

x
x[-1]
x[-(3:4)]

x[c(F,T,T,T,T)]

# recycling
x[c(T,F)]

b <- x < median(x)

x[b]

x[x<median(x)]


b<- x<median(x) | x > median(x)

x[x<median(x) | x > median(x)]

x<-1:5

names(x)<-letters[x]

x

x[names(x)]

require(gridExtra)
library(ggplot2)

y1<-sample(1:6,size=10,replace=T)
p1<-qplot(y1,binwidth=1)

y2<-sample(1:6,size=100,replace=T)
p2<-qplot(y2,binwidth=1)

y3<-sample(1:6,size=1000,replace=T)
p3<-qplot(y3,binwidth=1)

y4<-sample(1:6,size=10000,replace=T)
p4<-qplot(y4,binwidth=1)





y5<-sample(1:6,size=10,replace=T,prob=c(2/12,2/12,1/12,1/12,4/12,2/12))
p5<-qplot(y5,binwidth=1)

y6<-sample(1:6,size=100,replace=T,prob=c(2/12,2/12,1/12,1/12,4/12,2/12))
p6<-qplot(y6,binwidth=1)

y7<-sample(1:6,size=100,replace=T,prob=c(2/12,2/12,1/12,1/12,4/12,2/12))
p7<-qplot(y7,binwidth=1)

y8<-sample(1:6,size=1000,replace=T,prob=c(2/12,2/12,1/12,1/12,4/12,2/12))
p8<-qplot(y8,binwidth=1)

grid.arrange(p5, p6, p7, p8, nrow=2, ncol=2)




