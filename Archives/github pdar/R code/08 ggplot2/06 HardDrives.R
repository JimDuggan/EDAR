# data source --> https://www.backblaze.com/b2/hard-drive-test-data.html
library(plyr)  # for rbind.fill
library(dplyr)
library(lubridate)
library(ggplot2)

temp <- paste("R code/08 ggplot2/2013/",
             list.files(path="R code/08 ggplot2/2013/",
                        pattern="*.csv"), sep="")

myfiles <-  lapply(temp, read.csv)

# Extract a subset of the data (5 columns) into a list of data frames...

myfiles_f <- lapply(myfiles,function(x)
              data.frame(Date=x$date,
                         Serial.Number=x$serial_number,
                         Model=x$model,
                         Capacity=x$capacity_bytes,
                         Failure=x$failure))

# convert to one large data frame via a useful plyr function
df <- rbind.fill(myfiles_f)

# Convert to date format
df$Date <- ymd(df$Date)

df <- mutate(df,Day=wday(Date, label=T, abbr=F))

# Find what day of the week disks failed on
f_days <-  filter(df, Failure==1) %>%
            group_by(Day)   %>%
            summarise(TotalFails=n()) %>%
            arrange(desc(TotalFails))

f_model <-  filter(df, Failure==1) %>%
              group_by(Model)   %>%
              summarise(TotalFails=n()) %>%
              arrange(desc(TotalFails))




















