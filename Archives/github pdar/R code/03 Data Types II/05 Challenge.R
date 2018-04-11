# Write a function that takes in a variable 
# number of numeric vectors, combines them, 
# and returns the overall mean, minimum, and 
# maximum (output should be in a list).

# Use the browser() function to examine how the
# function operates

f <- function(...){
  #browser()
  l <- list(...)
  v <- unlist(l)
  list(data=v,mean=mean(v),max=max(v),min=min(v))
}



