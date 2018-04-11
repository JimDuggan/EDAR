powers1<-function(x,dg){
  pw<-matrix(x,nrow=length(x))
  prod<-x
  
  for(i in 2:dg){
    prod<-prod * x
    pw<-cbind(pw,prod)
  }
  
  return(pw)
}

powers2<-function(x,dg){
  pw<-matrix(x,nrow=length(x),ncol=dg)
  prod<-x
  
  for(i in 2:dg){
    prod<-prod * x
    pw[,i]<-prod
  }
  
  return(pw)
}

x<-runif(1000000)
system.time(powers1(x,8))
system.time(powers2(x,8))

Rprof()
invisible(powers1(x,8))
Rprof(NULL)
summaryRprof()

Rprof()
invisible(powers2(x,8))
Rprof(NULL)
summaryRprof()

