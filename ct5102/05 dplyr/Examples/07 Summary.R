library(ggplot2)

sapply(unique(mpg$manufacturer),function(x){
  d <- mpg[mpg$manufacturer==x,]
  mean(d$cty)
})

ddply(mpg,c("manufacturer"),function(x)mean(x$cty))

ddply(mpg,c("manufacturer"),
      function(mpg)c(City=mean(mpg$cty),
                     Hway=mean(mpg$hwy)))

