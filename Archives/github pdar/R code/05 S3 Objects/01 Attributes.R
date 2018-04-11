y<- 1:10

attr(y,"Attribute1") <- "This is a vector"
attr(y,"Time") <- Sys.time()

str(y)


y<-structure(1:10,Att1="This is a vector", Att2=Sys.time())

str(y)

str(y[1])

x<-1:2

names(x)<-c("a","b")

str(x)

str(x[1])


a<-1:6

a

attributes(a)

dim(a)<-c(2,3)

a

attributes(a)

attributes(a[1,])

attributes(a[1,,drop=F])



