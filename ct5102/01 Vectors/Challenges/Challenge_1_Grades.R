
grades <- sample(30:90,100,replace = T)

results <- ifelse(grades<40,"Fail",ifelse(grades<60,"Pass","Honours"))
