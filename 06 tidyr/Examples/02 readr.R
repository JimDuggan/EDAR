library(readr)

data <- read_csv("06 tidyr/CensusData.csv")


read_csv("a,b,c
         1,2,e
         4,5,6")

read_csv("The first line
         The second line 
         x,y,z
         1,2,3", skip=2)

read_csv("#Comment line 1 to skip
         x,y,z
         1,2,3", comment="#")


read_csv("1,2,3\n4,5,6",
  col_names = F)

read_csv("1,2,3\n4,5,6",
  col_names = c("x","y","z"))

read_csv("1,2,3\n4,5,6",
         col_names = c("x","y","z"),
         col_types=cols(
           x = col_integer(),
           y = col_double(),
           z = col_character()
         ))

str(parse_logical(c("T","F","NA")))

str(parse_number(c("20%","15%")))

str(parse_double(c("12.1","11")))

str(parse_date(c("2010-01-01")))

str(parse_factor(c("M","F","M"),levels=c("M","F")))

td<-gather(data,key = "Province", value="Population",Leinster:Ulster)

ggplot(data=td,aes(x=Year,y=Population,fill=Province))+geom_area()








