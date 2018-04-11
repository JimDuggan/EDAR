ids<-c("1234567","1234568")
fNames<-c("Jane","Matt")
sNames<-c("Smith","Johnson")
ages<-c(21,25)

s<-data.frame(ID=ids,FirstName=fNames,Surname=sNames,
              Age=ages,stringsAsFactors=FALSE)

s[1,]
s[1:2,]
s[2,]
s[-1,]

s[,"Age"]
s[,2]

s$Age
sub<-s[s$Age>21,]

sub<-subset(s,s$Age>21)



ids<-c("1234567","1234568")
subjects<-c("CT111","CT111")
grade<-c(80,80)

res<-data.frame(ID=ids,Subject=subjects,Grade=grade,stringsAsFactors=FALSE)

#CDD01: Population by Sex, Province or County and CensusYear 







