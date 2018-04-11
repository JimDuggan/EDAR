library(dplyr)
library(tidyr)

# data set sourced via:
#    Machine Learning with R, 2nd Edition by Brett Lantz
#    Chapter 9: Finding Groups of Data - Clustering with k-means
#
teen <- read.csv("R code/09 Case Studies/SNSData.csv")

# Note the missing values <NA> is 2724
summary(teen$gender)

# Note the outliers that are clearly errors in age (3, 106)
summary(teen$age)


# Clean up the age data

summary(teen$age)
teen$age <- ifelse(teen$age >=13 & teen$age < 20, teen$age, NA)

# How much would you miss by excluding gender?
sum(is.na(teen$gender))/nrow(teen)

# How much would you miss by excluding gender?
sum(is.na(teen$age) & !is.na(teen$gender))/nrow(teen)


# Generate a sample for testing...
s <- teen[sample(1:nrow(teen),100),]
# dealing with missing data - dummy coding mising values

# all females marked as 1, otherwise 0s are used
s$female    <- ifelse(s$gender == "F" & !is.na(s$gender),1,0 )
s$no_gender <- ifelse(is.na(s$gender),1,0 )

# Verify the values

table(s$gender, useNA="ifany")
table(s$female, useNA="ifany")
table(s$no_gender, useNA="ifany")


teen$female    <- ifelse(teen$gender == "F" & !is.na(teen$gender),1,0 )

teen$no_gender <- ifelse(is.na(teen$gender),1,0 )

sum(teen$female==0 & teen$no_gender ==0)

table(teen$gender, useNA="ifany")
table(teen$female, useNA="ifany")
table(teen$no_gender, useNA="ifany")

# Now look at ways to impute the missing age values

by_gradyear <- group_by(teen, gradyear)

summarise(by_gradyear, Average = mean(age,na.rm=T))

ave_age <- ave(teen$age,teen$gradyear,FUN = function(x) mean(x,na.rm=T))

teen$age <- ifelse(is.na(teen$age),ave_age,teen$age)

# with the cleaned data set, now apply a z transform to scale the numbers
# For example, with a z score of 3, we know that someone played something much more
# than the average.

interests <- select(teen,5:40)
sub <- interests[,1:5]

interests_z <- as.data.frame(lapply(interests,scale))
sub_z <- as.data.frame(lapply(sub,scale))

# Call the algorthm to cluster

set.seed(2345)
teen_clusters <- kmeans(interests_z, 5)


# provides the cluster that each individual is part of
teen_clusters$cluster

teen$cluster <- teen_clusters$cluster


centres <- cbind(Clusters=1:5,as.data.frame(teen_clusters$centers))

t <- gather(centres,Category,Centre,basketball:drugs)

# Analyse some data

arrange(t, Clusters, desc(Centre))

filter(arrange(t, Clusters, desc(Centre)),Clusters==1)
filter(arrange(t, Clusters, desc(Centre)),Clusters==2)
filter(arrange(t, Clusters, desc(Centre)),Clusters==3)

arrange(t, Category, desc(Centre))


teen$cluster <- teen_clusters$cluster

by_cluster <- group_by(teen, cluster)

summarise(by_cluster, Avr.Age = mean(age,na.rm=T),
                      Avr.Female = mean(female),
                      Avr.Friends = mean(friends))















    