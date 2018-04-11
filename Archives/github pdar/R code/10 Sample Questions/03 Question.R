# Note, we did not cover tapply this year

ids<-c("1233","1234","1235","1237","1238","1239")
names<-c("J. Murphy","M. Smyth","P.Joyce","S. Kenny", "B. Jones", "D. Murray")
courses<-c("3CS1","3CS1","1MS1","1MS1","3CS1","3CS1")
subjects<-c("CT398","CT398","CT541","CT541","CT398","CT398")
q1<-c(50, 89, 71, 44, 56, 61)
q2<-c(62, 73, 76, 47, 82, 98)
q3<-c(34, 93, 45, 51, 45, 12)
q4<-c(84, 98, 79, 87, 71, 94)
q5<-c(55, 56, 15, 69, 67, 76)

res.df<-data.frame(ID=ids,Name=names,Course=courses,Subject=subjects,
                   Q1=q1,Q2=q2,Q3=q3,Q4=q4,Q5=q5)

# Total score
res.df$total<-apply(res.df[,5:9],1,function(x)sum(x))
res.df$total<-apply(res.df[,5:9],1,sum)

# Percentage
res.df$percentage<-res.df$total/5

# Sorted order of merit, by course code
res.df[order(res.df$Course,-res.df$percentage),]


# Mean score for each course
tapply(res.df$percentage,res.df$Course,mean)

# Maximum score for each subject
tapply(res.df$percentage,res.df$Subject,max)


# Find the maximum score for all questions
maxq<-apply(res.df[,5:9],2,function(x)max(x))

# Student who got the highest score in question 3
res.df[which.max(res.df$Q3==maxq[3]),]

# Produce an overall category in the subject A, B, C, D, E.
res.df$Grade<-ifelse(res.df$percentage<40,"E",
                     ifelse(res.df$percentage<50,"D",
                            ifelse(res.df$percentage<60,"C",
                                   ifelse(res.df$percentage<70,"B",
                                          ifelse(res.df$percentage<100,"A",NA)))))