# Based on Hadley Wickham's dplyr tutorial

library(dplyr)
library(ggplot2)

flights <- tbl_df(read.csv("08 Tidy Data/flights.csv", 
                           stringsAsFactors = FALSE))
flights$date <- as.Date(flights$date)

weather <- tbl_df(read.csv("08 Tidy Data/weather.csv",
                               stringsAsFactors = FALSE))
weather$date <- as.Date(weather$date)
  
planes <- tbl_df(read.csv("08 Tidy Data/planes.csv",
                            stringsAsFactors = FALSE))
  
airports <- tbl_df(read.csv("08 Tidy Data/airports.csv",
                                stringsAsFactors = FALSE))