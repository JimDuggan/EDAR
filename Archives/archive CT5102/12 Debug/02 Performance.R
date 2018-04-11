x<-runif(1000000)
y<-runif(1000000)

addTest1<-function(x,y){
  z<-vector(length=1000000)
  for(i in 1:length(x))
    z[i]<-x[i]+y[i]
  return(z)
}



addTest2<-function(x,y){
  z<-x+y
}