v1<-1:10

class(v1)<-"myclass"

print.myclass<-function(x){
  cat("Myclass\n")
  cat(x)
}


