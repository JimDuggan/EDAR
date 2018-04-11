library(forcats)


# creating factors

days <- c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")

(days <- c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"))

(raindays <- factor(sample(days,10,replace = T),levels=days))

rain <- fct_recode(rain,"Mon"="Monday")


