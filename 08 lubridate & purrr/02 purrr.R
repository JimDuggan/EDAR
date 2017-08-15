library(tidyverse)

df <- tibble(
  a = rnorm(4),
  b = rnorm(4),
  c = rnorm(4),
  d = rnorm(4)
)

df

map_dbl(df,mean)

map_lgl(iris,is.factor)

df <- data.frame(
  a = 1L,
  b = 1.5,
  y = Sys.time(),
  z = ordered(1)
)

# number of unique values in each col of iris

map_int(iris,function(x)length(unique(x)))

map_int(iris,~length(unique(.)))

safe_log <- safely(log)

x <- list(10,"a")

str(map(x,safe_log))

str(safe_log(10))

str(safe_log("a"))




x <- list(10,"a")

str(map(x,safely(log)))

str(safe_log(x))

x <- list(10,"a")

y <- x %>% map(safely(log)) %>% transpose

str(y)

is_ok <- y$error %>% map_lgl(is_null)

is_ok

y$result[is_ok] %>% flatten_dbl()



x <- list(1, 10, "a")

x %>% map_dbl(possibly(log, NA_real_))

str(transpose(y))

str(safe_log(x))

mu <- list(5,10,-3)
sigma <- list(1,5,10)

map2(mu,sigma,rnorm, n=5) %>% str()


n <- list(1,2,5)
mu <- list(5,10,-3)
sigma <- list(1,5,10)
args1 <- list(n=n, mean=mu, sd=sigma)

args1 %>% pmap(rnorm)

f <- c("runif","rnorm","rpois")

param <- list(
  list(min=-1,max=1),
  list(sd=5),
  list(lambda=10))

invoke_map(f,param,n=5) %>% str()


args1 <- list(n=list(1,2,5), mean=list(5,10,-3), 
              sd=list(1,5,10))
args1 %>% pmap(rnorm)




