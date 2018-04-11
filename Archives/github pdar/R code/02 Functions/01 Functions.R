


f <- function(x){x^2}

is.function(f)

is.primitive(f)

is.function(sum)

is.primitive(sum)


l <- function(x){x+1}

m<-function(){
  l<-function(x){x*2}
  l(10)
}


m()

j<- function(){
  if(!exists("a")){
    a<-1
  } else{
    a<-a+1
  }
  
  print(a)
  
}

f <- function (x) x^2

g <- function(){
  x <- f(2)
  f <- function (y) y ^3
  y <- f(2)
  c(x,y)
}


f <- function(x)x^2

g <- function(){
  c(is.function(f),is.primitive(f),is.primitive(sum))
}







