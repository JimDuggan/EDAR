v1<-1:20
class(v1)<-"myclass"

mean.myclass<-function(x){
  cat("This is my mean...")
  sum(x)/length(x)
}


