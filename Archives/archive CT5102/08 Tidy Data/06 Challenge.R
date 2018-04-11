library(gdata) 
library(reshape2)
library(dplyr)

con <- tbl_df(read.xls("08 Tidy Data/Constituencies.xlsx"))

# Get all three seaters
filter(con,Seats<=3)

# Get all constituencies in Dublin
filter(con,grepl("Dublin",Constituency) | grepl("Laogh",Constituency))


# Remove one of the columns
select(con,-Population.Per.Dail.Member)

# Add in nationwide share of population
mutate(con,Share=Population/sum(Population))

# arrange dataset by population and seat number
arrange(con,desc(Population),desc(Seats))


# show the total population covered by 3,4 and 5 seats
by_seat<-group_by(con,Seats)
agg<-summarize(by_seat,Total=sum(Population))
mutate(agg,Percentage=Total/sum(Total))

