v1<-1:10
class(v1)<-"myclass"

print.myclass<-function (x){
  cat("Printing myclass\n")
  cat("Value = ",x,"\n")
}

mean.myclass<-function(x){
  cat("Getting the mean of a myclass object\n") 
  sum(x)/length(x)
}

info<-function(x){
  UseMethod("info",x)
}

print.data.frame<-function(x){
  cat("This is a data frame...\n")
  x
}

info.data.frame<-function(x){
  cat("This is a data frame...\n")
  x
}

info.list<-function(x){
  cat("This is a list...\n")
  x
}
