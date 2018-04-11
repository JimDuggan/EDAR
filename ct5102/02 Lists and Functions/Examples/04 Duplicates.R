# write a function that takes in a vector and returns that
# vector with no duplicates

f <- function(v){
  v[!duplicated(v)]
}