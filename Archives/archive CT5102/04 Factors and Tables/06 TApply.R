ages<-c(25,26,55,37,21,42)
affils<-c("R","D","D","R","U","D")
gender<-c("M","M","F","F","F","M")

m1<-tapply(ages,list(affils,gender),mean)

m<-tapply(ages,affils,mean)
g<-tapply(ages,gender,mean)

#http://docs.ggplot2.org/0.9.3.1/geom_bar.html

o<-split(ages,gender)
