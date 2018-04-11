web  <- readLines('http://www.accuweather.com/en/ie/galway/208539/weather-forecast/208539')
file <-readLines('06 Strings/Weather.html')

library(readr)
mystring <- read_file("06 Strings/Weather.html")

str_locate(mystring, "Galway, Ireland(.)+cloudy")
str_extract_all(mystring, "Galway, Ireland")

# acm_RecentLocationsCarousel.push({name:"Galway, Ireland", 
#  daypart:'night', href:'/en/ie/galway/208539/weather-forecast/208539', 
#  icon:'http://vortex.accuweather.com/adc2010/images/icons-numbered/38-m.png', 
#  bg:'s', temp:'13',  realfeel:'11',  text:'Mostly cloudy'});

pattern<-"acm_RecentLocationsCarousel.push(\\{name:\\"Galway, Ireland\\"


l<-c("Dublin", "County Dublin","Galway","Dublin Airport")

l[grepl("Dublin",l)]

str_locate("aaa12xxx", "[0-9]+")
str_locate("aaa12xxx", "[[:digit:]]+")
str_locate("aaa12xxx", "a[[:digit:]]+")
str_locate("aaa12xxx", "^aaa[0-9]+")

# find phone numbers in a list of text







