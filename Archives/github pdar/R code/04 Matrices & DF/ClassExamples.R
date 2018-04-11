# Create a 4x4 matrix, with values from 1:16, where the matrix is filled by row order
# Add a column called “SumRow” which contains the sum of each row in the matrix
# Add a row (to the original matrix) called “SumCol” which contains the sum of each column in the matrix
# Use the apply() function

m <- matrix(1:16, ncol=4, byrow = T)


cbind(m,sum=apply(m,1,sum))

rbind(m,apply(m,2,sum))

# Given that a data frame can be manipulated using 
# matrix notation, find another way to calculate 
# the total population (hint: use the apply function)

library(gdata) 

pop <- read.xls("R code/04 Matrices & DF/CensusData.xlsx")



