

f <- function(abcdef, bcde1, bcde2){
  c(a=abcdef, b1=bcde1, b2=bcde2)
}


f(1,2,3)

f(2,3,abcdef = 1)

f(2,3,a = 1)

f(2,3,b = 1)



g <- function(a=1, b=1){
  c(a,b)
}


h <- function(a=1, b=1){
  c(missing(a),missing(b))
}

my_min <- function(v){
  if(!is.numeric(v)) 
    stop("Error, type should be numeric")
  min(v)
}


'+'<-function(a,b){a*b}

v<-c(T,F,NA)

v

typeof(v)

is.na(v)

v[!is.na(v)]








