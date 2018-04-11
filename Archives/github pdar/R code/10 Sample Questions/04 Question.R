
# 4 (b)
myf<-function(...){
  l<-list(...)
  lapply(l,function(x)list(Data=x,
                           Length=length(x),
                           Max=max(x),
                           Min=min(x),
                           Median=median(x),
                           SD=sd(x)))
}

myf(1:10,20:40,60:100)


# 4 (c)
A<-100; B<-20

f1<-function(a){
  B<-100
  f2<-function(b){
    A<<-200
    B<<-1000
  }
  f2(a)
}

f1(B)

cat("A = ",A,"\n")
cat("B = ",B,"\n")


# 4 (d) - Replacement functions not covered this year.

`second<-` <- function(x, value) {
  x[c(T,F)] <- value
  x
}

v <- 1:10
second(v) <- 300

