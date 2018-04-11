print.test <- function (v){
  cat(names(summary(v)),"\n")
  cat(summary(v))
}

v <- 1:10

class(v)<-"test"
