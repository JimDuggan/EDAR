f <- function(v){
  list(Source=v,
       Minimum=min(v),
       Maximum=max(v),
       Median=median(v),
       SDev=sd(v),
       Range=range(v))
}

as_l <- function(...){
  list(...)
}



y <- function(v){
  list(min(v),
       max(v),
       Median=median(v),
       SDev=sd(v),
       Range=range(v))
}