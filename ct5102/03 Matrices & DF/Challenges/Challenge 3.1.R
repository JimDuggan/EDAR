#Use the apply function and another R function to 
#add a new column to a matrix which contains the 
#mean of each row.

m <- matrix(1:12,nrow = 4)

m <- cbind(m,apply(m,1,mean))







