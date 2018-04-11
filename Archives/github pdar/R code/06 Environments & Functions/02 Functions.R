y <- 1

f <- function(x) x+y

environment(f)

h <- function(x){
  a <- 2
  x + a
}

y <- h(1)


plus <- function (x){
  function(y)x+y
}

p1<-plus(1)

p1(10)


h <- function(){
  x <- 10
  function(){
    x
  }
}

i <- h()

x <- 20

i()



# what will f() return?

x <- 0
y <- 10

f <- function(){
  x <- 1
  g()
}

g <- function(){
  x <- 2
  h()
}

h <- function(){
  x <- 3
  x + y
}

f1 <- function(x1){
  f2 <- function(x2){
    f3 <- function(x3){
      x1+x2+x3
    }
  }
}

f <- function(){
  print("f() Function Environment")
  print(environment())
  print("f() Parent Environment")
  print(parent.env(environment()))  
  print("f() Calling Environment")
  print(parent.frame())  
}


g <- function(){
  print("g() Function Environment")
  print(environment())
  print("g() Parent Environment")
  print(parent.env(environment()))  
  print("g() Calling Environment")
  print(parent.frame()) 
  f()
}











