v <- 1:100

locs <- sample(1:100,10)

v[locs] <- NA

which(is.na(v))