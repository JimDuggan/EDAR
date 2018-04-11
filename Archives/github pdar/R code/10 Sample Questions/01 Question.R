# 1(a) The idea of vectorisation

x <- sqrt(2:10)

# 1(b) 

rn <- sample(1:10,replace = T,size = 100)

frn <- rn[rn %% 2 == 0 | rn %% 5 == 0]

frn_ndup <- frn[!duplicated(frn)]


# 1 (c)

response <- sapply(-100:100,function(x,a,b,c) a*x^2 + b*x + c,a=2,b=3,c=5)


# 1 (d)

v <- runif(n = 1000)

mn <- mean(v)

df <- v - mn

test <- df <= 0

res <- v[!test]

# 1 (e)

v   <- 1:20
res <- v[c(T,F,F,F)]

