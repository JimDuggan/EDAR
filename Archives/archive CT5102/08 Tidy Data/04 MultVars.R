library(gdata) 
library(reshape2)
library(dplyr)

c.col <- read.xls("08 Tidy Data/Census2011Combined.xlsx",
                  stringsAsFactors=F)
c.c<-melt(c.col,id.vars = NULL)
names(c.c)<-c("Province.Gender","Population")

c.c$Province.Gender<-sub("_M","_Male",c.c$Province.Gender)
c.c$Province.Gender<-sub("_F","_Female",c.c$Province.Gender)

r<-strsplit(as.character(c.c$Province.Gender),"_")

mat <- matrix(unlist(r), ncol=2, byrow=TRUE)
df  <- as.data.frame(mat)

c.c$Province<-df[,1]
c.c$Gender<-df[,2]

