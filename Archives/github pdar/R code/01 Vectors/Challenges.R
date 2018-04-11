# Create an R vector of squares of 1 to 10

v <- (1:10)^2

# Find the minimum
mn <- min(v)

#Find the maximum
mx <- max(v)

#Find the average
avr1<-mean(v)
avr2 <- sum(v)/length(v)

# Subset all those values greater than the average

gta <- v > avr1

v[v > mean(v)]



