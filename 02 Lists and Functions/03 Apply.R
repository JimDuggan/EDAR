v1 <- 1:5

out <- lapply(v1,function(x)x+2)

str(out)

unlist(out)


v2 <- list(1:3,4:6)

out <- lapply(v2, 
              function(x)list(max=max(x),min=min(x)))

str(out)

v3 <- 1:5

out <- sapply(v1,function(x)x+2)

str(out)