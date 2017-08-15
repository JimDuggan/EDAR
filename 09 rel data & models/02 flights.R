library(dplyr)
library(nycflights13)

# flights
# airlines
# weather

# see http://eriqande.github.io/rep-res-web/lectures/making-maps-with-R.html
usa <- map_data("usa")
ggplot() + 
  geom_polygon(data = usa, aes(x=long, y = lat, group = group)) +
  geom_point(data=airports,aes(x=lon,y=lat))+
  coord_quickmap()

ggplot() +
  geom_point(data=airports,aes(x=lon,y=lat))+
  coord_quickmap()

ggplot() + 
  geom_point(data = usa, aes(x=long, y = lat)) + 
  coord_fixed(1.3)

ggplot() + 
  geom_line(data = usa, aes(x=long, y = lat,group=group)) + 
  coord_fixed(1.3)

