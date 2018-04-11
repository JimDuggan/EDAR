library(gdata) 
library(reshape)


getData<-function(){
  c <- read.xls("04 Factors and Tables/CountyCensus.xlsx")  
}

meltData<-function(df){
  ans<-melt(df,id.vars ="County")
  names(ans)<-c("County","Gender","Population")
  ans$Gender<-factor(ans$Gender)
  ans
}

# Get the data frame from the worksheet
x<-getData()

# Melt into a new data frame with M/F as factors
y<-meltData(x)

# Get the average male and female population across counties
aver<-tapply(y$Population,y$Gender,mean)

cat("Average number of males across counties   = ",aver[1])
cat("Average number of females across counties = ",aver[2])






