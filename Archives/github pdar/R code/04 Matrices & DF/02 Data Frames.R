# creating a data frame

# see all available data sets in R
data()

df <- data.frame(x=1:5,y=LETTERS[1:5],stringsAsFactors=F)

str(mtcars)


mtcars[mtcars$gear == 5,]

mtcars[mtcars$gear == 5 & mtcars$cyl == 8,]

mtcars[sample(nrow(mtcars),2),]

# https://en.wikipedia.org/wiki/List_of_cities_in_the_European_Union_by_population_within_city_limits

cities <- data.frame(Name=c("Dublin", "London", "Paris", "Madrid"),
                     Population=c(553165,8673713,2244000,3141991))

cities$Type <- ifelse(cities$Population > 3000000,"LARGE","MEDIUM")




