# Write 2 “parallel” vectors that store a course code in one, 
# and the number of students in the other. 
# Write a script that returns the number of students in a course.

c<-c("CT101","CT102","CT103","CT216")
s<-c(78,90,101,76)

search<-"CT103"

index<-which(c==search)

s[index]





