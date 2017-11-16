
test<-mtcars[1:3,1:6]

# What will happen?
# What will be the return type?
# What will be the return values?

a1 <- apply(test,1,function(x){
  browser()
  max(x)
})

a2 <- apply(test,2,function(x){
  #browser()
  max(x)
})

a3 <- sapply(test,function(x){
  #browser()
  max(x)
})

a4 <- lapply(test,function(x){
  #browser()
  max(x)
})


myfunc <- function(x)max(x)


a11 <- apply(test,1,myfunc)
a12 <- apply(test,2,myfunc)
a13 <- sapply(test,myfunc)
a14 <- lapply(test,myfunc)

