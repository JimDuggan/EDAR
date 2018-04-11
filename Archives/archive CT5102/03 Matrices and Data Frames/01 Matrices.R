v<-c(10,20,30,40,50,60)

m1<-matrix(v,nrow=3,ncol=2)

m2<-matrix(v,nrow=3,ncol=2,
           byrow=T)

m1[1,1]
m1[1,]
m1[1:2,]

m1[,1]
m1[,1:2]

m1
dim(m1)

nrow(m1)
ncol(m1)

rowSums(m1)
colSums(m1)

rowMeans(m1)
colMeans(m1)

rbind(m1,c(40,70))

cbind(m,c(70,80,90))


m1
# 1 applies to rows
apply(m1,1,min) 

m1
# 2 applies to columns
apply(m1,2,min) 

dimnames(m1) <- list(rownames(m1, do.NULL = FALSE, prefix = "row"),
                     colnames(m1, do.NULL = FALSE, prefix = "col"))

# http://www.r-bloggers.com/testing-recommender-systems-in-r/

m<-matrix(runif(25),nrow=5)
cbind(m,apply(m,1,max))
rbind(m,apply(m,2,max))



  
  



