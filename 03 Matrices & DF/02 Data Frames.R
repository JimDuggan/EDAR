my_mtcars <- mtcars

set.seed(0)

rows <- sample(nrow(my_mtcars),3)
col  <- sample(ncol(my_mtcars),1)

my_mtcars[rows,col] <- NA

!complete.cases(my_mtcars)

my_mtcars[rows,"qsec"] <- mean(my_mtcars$qsec,na.rm = T)

my_mtcars <- mtcars

set.seed(0)

my_mtcars <- mtcars

rows <- sample(nrow(my_mtcars),3)
col  <- sample(ncol(my_mtcars),1)

my_mtcars[rows,col] <- -9000

col  <- sample(ncol(my_mtcars),1)

my_mtcars[rows,col] <- -1000

clean <- data.frame(apply(my_mtcars,2,
                          function(x)ifelse(x<0,NA,x)))

clean2 <- data.frame(apply(my_mtcars,2,
                          function(x){
                            y <- ifelse(x<0,NA,x)
                            ifelse(is.na(y),mean(y,na.rm=T),y)}))

