
# Read in as a date-time 
mydate <- as.POSIXct("01-01-2010",
  format="%d-%m-%Y", tz="UTC")

mydate

# Get the month
month <- as.numeric(format(mydate,"%m"))

month

# Set the month to February
mydate <- as.POSIXct(format(mydate,
  "%Y-2-%d"),tz="UTC")

mydate

mydate <- dmy("01-01-2010")

mydate

m <- month(mydate)

m

month(mydate) <- 2

mydate


d1 <- dmy("12-01-2010")

d <- now()

d

year(d)

minute(d)

month(d)

month(d, label=TRUE)

month(d, label=TRUE, abbr = FALSE)

wday(d, label=TRUE, abbr = FALSE )

day(d) <- 7









