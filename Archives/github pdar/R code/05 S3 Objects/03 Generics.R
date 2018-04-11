# Generic function

f <- function(x){
  UseMethod("f")
}

f.a <- function(x){
  print("this is function f.a")
}

f.b <- function(x){
  print("this is function f.b")
}

f.default <- function(x){
  print("This is the default function")
}


z<-structure(list(),class="c")


f(z)



x <- structure(list(),class="a")

str(x)

f(x)

y <- structure(list(),class="b")

str(y)

f(y)

