library(ggplot2)


head(mpg)


qplot(x=displ,y=hwy, data=mpg)


ggplot(mpg, aes(x=displ, y = hwy)) +
       geom_point()


ggplot(mpg, aes(displ)) +
  geom_histogram()


ggplot(mpg, aes(x=displ, y = hwy, colour=class)) +
  geom_point()


ggplot(mpg, aes(x=displ, y = hwy, shape=drv)) +
  geom_point()

ggplot(mpg, aes(x=displ, y = hwy, size= cyl)) +
  geom_point()


ggplot(mpg,aes(x=displ, y=hwy)) + 
  geom_point() +facet_wrap(~class)

ggplot(mpg,aes(x=displ, y=hwy)) + 
  geom_point() +facet_wrap(~class) + geom_smooth(method="lm") 

ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth()

ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth(method="lm")

ggplot(mpg, aes(drv, hwy)) +
  geom_boxplot()


ggplot(mpg, aes(hwy)) +
  geom_histogram()


ggplot(mpg, aes(manufacturer)) +
  geom_bar()

ggplot(faithfuld,aes(waiting, eruptions))+
  geom_tile(aes(fill=density))


















