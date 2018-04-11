# CT5102: Programming for Data Analytics
#         Jim Duggan, NUI Galway
# 
#         Introduction to Vectors
#
#

# finding help in R
?seq
help("seq")

# Creating a vector (using the c() function)
v1<-c(1,4,9,16,25)

# Accessing elements of a vector, using an index, and print using cat

cat("Display first element ",v1[1])
cat("Display last element ",v1[5])

# creating sequences with the : operator
v2<-1:10
v3<-3:13


# creating sequences with the seq function
v4<-seq(1,5)
v5<-seq(1,5,by=.5)
v6<-seq(1,100,by=20)

# sequences as indices (minus excludes elements)
v1[1:2]
v1[3:5]
v1[-1]
v1[-(1:3)]

# max and min functions
mx<-max(v1)
mn<-min(v1)

# modes and structures of vectors
mode(v1)
str(v1)
s1<-c("CT5102","CT561")
mode(s1)
str(s1)

b1<-c(TRUE,FALSE)
mode(b1)
str(b1)

# vectorization
sr<-sqrt(v1)
sr*3
sr+sr

# creating boolean vectors
b2<-v1 %% 2 ==0

# using boolean vectors as indices
v1[b2]
v1[!b2]

# finding the location of a specific value
index<-which(v1==25)
v1[index]

# naming vector elements, and using as index
names(v1)<-c("Var1","Var2","Var3","Var4","Var5")
v1["Var3"]

# vectorized if/else
ifelse(v1 %% 2==0,"Even","Odd")

# generate a ranodm sample of 20 numbers from range 1:3
s1<-sample(1:3,20,replace=TRUE)

# replicate the stream of random numbers using set.seed(n)
# s2 will equal s4
set.seed(111)
s2<-sample(1:3,20,replace=TRUE)
s3<-sample(1:3,20,replace=TRUE)
set.seed(111)
s4<-sample(1:3,20,replace=TRUE)
s2-s4

# Gather data on the frequency of (whole) numbers in a vector
t1<-table(s1)
props<-prop.table(t1)
