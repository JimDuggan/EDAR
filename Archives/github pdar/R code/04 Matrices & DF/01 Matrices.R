a <- matrix(1:6, ncol=3, nrow=2)


cbind(a,c(7,8))

rbind(a,c(7,8,9))


a <- matrix(1:6, ncol=3, nrow=2,byrow = T)


rownames(a) <- c("A","B")


colnames(a) <- c("a","b","c")

b <- matrix(1:9, nrow=3)



colnames(b) <- c("A","B","C")




b[,c("A","C")]

b[,1:2]

b[1:2,]

b[c(T,F),]
