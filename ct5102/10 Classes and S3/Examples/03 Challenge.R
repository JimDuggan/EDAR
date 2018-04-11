# Note the flexibility of S3

class(mtcars)

class(mtcars) <- c("df1","data.frame")

print.df1 <- function(m){
  cat("This is my print function...\n")
  cat("============================\n")
  #print.data.frame(m)
  class(m) <- "data.frame"
  print(m)
  # is there another way of doing this?
  
}