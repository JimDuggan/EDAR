mymean.default<-function(x){
  cat("Calling mymean.default...\n")
  if(!is.numeric(x))
    return()
  sum(x)/length(x)
}

mymean.vector<-function(x){
  cat("Calling mymean.vector...\n")
  mymean.default(x)
}


mymean.matrix<-function(x){
  cat("Calling mymean.matrix...\n")  
}

mymean<-function(x){
  UseMethod("mymean",x)
}
                 