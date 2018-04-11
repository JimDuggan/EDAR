library(gdata)
library(tidyr)
library(ggplot2)
library(dplyr)



marks   <- read.xls("R code/08 ggplot2/ExamMarks.xlsx",
                    sheet = "Results",
                    stringsAsFactors=F)

tidy <- gather(marks,key=Subject,value=Grades,CX1000:CX1009)

trans <- function(x){
  if(x>=70 & x <=100)
    return("H1") else if(x>=60)
      return("H2.1") else if (x>=50) 
        return("H2.2") else if (x >= 40)
    return("Pass") else return("Fail")
}

tidy1 <- tidy %>%
          mutate(Grade=sapply(Grades,trans))

ggplot(tidy1, aes(x=Subject,y=Grades))+geom_boxplot()

ggplot(tidy1, aes(x=Student.ID,y=Grades,colour=Grade))+
  geom_point()

ggplot(tidy1,aes(x=Student.ID, y=Grades,colour=Grade)) + 
  geom_point() +facet_wrap(~Subject)

ggplot(tidy1,aes(x=Subject, y=Grades,colour=Grade)) + 
  geom_point() +facet_wrap(~Student.ID)





