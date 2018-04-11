

power <- function (exponent){
  function (x){
    x ^ exponent
  }
}


new_counter <- function(){
  i <- 0
  function(){
    i <<- i + 1
    i
  }
}






