
library(gdata) 
library(xlsx)


pop <- read.xls("R code/04 Matrices & DF/CensusData.xlsx")


pop$Total <- pop$Leinster+pop$Munster+pop$Connacht+pop$Ulster

library(xlsx)

write.xlsx(x = pop, file = "./R code/04 Matrices & DF/Output.xlsx",
           sheetName = "Processesed Data", row.names = FALSE)




