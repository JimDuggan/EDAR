f <- function(){
  x <- 1
  y <- 2
  c(x,y)
}

f()

x <- 2
y <- 22
g <- function(){
  y <- 1
  c(x,y)
}

g()

x <- 1
h <- function(){
  y <- 2
  i <- function(){
    z <- 3
    c(x,y,z)
  }
  i()
}

h()


j <- function(x){
  y <- 2
  function(){
    c(x,y)
  }
}

k <- j(1)
k()






