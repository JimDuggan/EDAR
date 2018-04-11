

f<-function(x){
  UseMethod("f")
}

g <-function(x){
  UseMethod("g")  
}

f.a<-function(x){
  print("function f.a")
}

f.b<-function(x){
  print("function f.b")
}

g.a<-function(x){
  print("function g.a")
}



z<-structure(list(),class=c("b","a"))

class(z)

f(z)

g(z)


p<-structure(list(),class=c("c","data.frame"))

methods(class="data.frame")



print.df1<-function(x){
  print(Sys.time())
  print(data.frame(x))
}

class(mtcars) <- c("df1","data.frame")
mtcars[1:2,]

