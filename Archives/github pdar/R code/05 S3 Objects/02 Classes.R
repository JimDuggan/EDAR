library(pryr)

typeof(mtcars)

class(mtcars)

otype(mtcars)

methods(mean)

x<-1:100

print(x)

class(x)<-"test"

print.test<-function(x){
  print("Hello World")
}

class(x)<-"test1"

o<-list(a="Test")

str(o)

class(o)<-"my_object"

o<-structure(list(a="test"),class="my_object")

str(o)

class(o)


myobject <- function(x){
  structure(list(a=x), class="my_object")
}

o <- myobject("Test")







