f1 <- function(x)x^2

a <- 10
f2 <- function(x){
  a <-1
  x^2+a
}

x <- f2(10)

p1 <- function(f, v){
  f(v)
}

p1 (min,1:10)

p1(max,1:10)

xs <- c(10,20,30)
names(xs) = c("a","b","c")



for (x in xs)print(x)

for(i in seq_along(xs))print(xs[i])

for(nm in names(xs))print(xs[nm])


p1(mean,1:10)

