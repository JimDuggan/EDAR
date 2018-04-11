# The job of an environment is to associate (or bind) a set of names to a set of values
# A place to store variables

e <- new.env()

e$a <- F
e$b <- "a"
e$c <- 2.3
e$d <-1:3

with(e, x<- 1:10)

parent.env(e)

ls(e)

ls.str(e)

a <- 10

get("a", env=e)

get("a", env=globalenv())

#rm("a", envir = e)

exists("a", envir = e)

exists("a", envir = e, inherits = F)

library(pryr)

where("a")

f<-function(x){
  g<-function(x){
    
  }
  print(environment(g))
  print(parent.env(environment(g)))
  x^2
}

a<-1

g<-function(){
  print(a)
}





