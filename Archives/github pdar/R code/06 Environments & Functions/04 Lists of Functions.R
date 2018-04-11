

compute_mean <- list(
  base_m = function(x) mean(x),
  sum_m  = function(x) sum(x)/length(x),
  manual_m = function(x){
    total <- 0
    for(i in seq_along(x)){
      total <- total + x[i]
    }
    total/length(x)
  }
)



x <- runif(1e5)

system.time(compute_mean$base_m(x))
system.time(compute_mean$sum_m(x))
system.time(compute_mean$manual_m(x))

x <- runif(1e5)

summary(x)

lapply(compute_mean, function(f)f(x))


x <- 1:10
funs <- list(
  sum = sum,
  mean = mean,
  median = median
)

lapply(funs,function(f)f(x))
  


