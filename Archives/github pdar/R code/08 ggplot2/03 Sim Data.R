library(gdata)
library(tidyr)
library(ggplot2)

sim   <- read.xls("R code/08 ggplot2/SimData.xlsx",
                    stringsAsFactors=F)

sim_tidy <- gather(sim,key=Cohort,value=Population,2:5)


ggplot(data=sim_tidy,aes(x=Year,y=Population,fill=Cohort)) + 
  geom_area()


