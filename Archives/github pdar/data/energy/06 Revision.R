library(ggplot2)
library(tidyr)
library(dplyr)
library(gdata)

# test for github

dt <- ggplot2::mpg

# plot x, y graph of cyl vs cty

ggplot(data = dt) +
  geom_point(mapping = aes(x=cyl,y=cty))


# plot x, y graph of cyl vs cty, colour by class
ggplot(data = dt) +
  geom_point(mapping = aes(x=cyl,y=hwy,colour=class))


# create a tibble from the data
data <- as_data_frame(read.xls("data/energy/SalesData.xlsx"),stringsAsFactors=F)


# Add a new column using mutate

data <- mutate(data,Revenue=Units.Sold * Unit.Price)

# Calculate total sales per year using summarise
trev <- group_by(data,Year) %>% summarise(TotalRevenue=sum(Revenue))

# Calculate total sales per product by year sort by year (desc)
tsales_by_p <- group_by(data,Year,Product) %>% summarise(TotalSales=sum(Revenue)) %>%
                 arrange(desc(Year))

#Calculate the total units sold per month for product AX-YYY-ZZ (tablet)

spm <- filter(data,Product=="AX-YYY-ZZ") %>%
        group_by(Month)  %>%
         summarise(TotalSalesPerMonth=sum(Units.Sold))






