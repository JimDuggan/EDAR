x <- 1; y <- 2; z <- 3
h <- function(){
  x <- 10
  z <- 30
  i <- function(){
    x <- 100
    z <- 300
    j<- function(){
      x <- 1
      c(x,y,z)
    }# end of j
    j()
  } # end of i
  i()
}# end of h



f<- function(x){
  if( x < 20){
    0
  }else {
    10
  }
}

g<- function(x){
  if( x < 20){
    return(0)
  }else {
    return(10)
  }
}




