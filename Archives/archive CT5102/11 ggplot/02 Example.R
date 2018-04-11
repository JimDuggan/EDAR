library(gcookbook)

str(heightweight)

# simple plot
ggplot(data=heightweight, aes(x=ageYear,y=heightIn))+
        geom_point()

# Add colour
ggplot(data=heightweight,
        aes(x=ageYear,y=heightIn))+
   geom_point(aes(colour=sex))


ggplot(data=heightweight,
       aes(x=ageYear,y=heightIn))+
  geom_point(aes(colour=weightLb),size=weightLb)

ggplot(data=heightweight,
       aes(x=ageYear,y=heightIn))+
  geom_point(aes(shape=sex))

ggplot(data=heightweight,aes(x=ageYear,y=heightIn))+
  geom_point(aes(colour=weightLb))+facet_grid(.~sex)

ggplot(data=heightweight,aes(x=ageYear,y=heightIn))+
  geom_point()+facet_grid(sex~.)

ggplot(data=heightweight,aes(x=ageYear,y=heightIn))+
  geom_point(aes(colour=sex,size=weightLb))+
  scale_size_area()


# themes
ggplot(data=heightweight,aes(x=ageYear,y=heightIn))+
  geom_point()+theme_classic()

ggplot(data=heightweight,aes(x=ageYear,y=heightIn))+
  geom_point()+theme_grey()

ggplot(data=heightweight,aes(x=ageYear,y=heightIn))+
  geom_point()+theme_minimal()

ggplot(data=heightweight, aes(x=ageYear,y=heightIn))+
          geom_point()+ stat_smooth(method=lm, level=.95,color="red")

ggplot(data=heightweight,
       aes(x=ageYear,y=heightIn))+
  geom_point()+geom_smooth()

ggplot(data=heightweight,
       aes(x=ageYear,y=heightIn))+
  geom_point()+facet_grid(sex~.)+stat_smooth(method=lm)

ggplot(data=heightweight,
       aes(x=heightIn))+
       geom_line(stat="density",colour="blue")


  geom_point()+facet_grid(sex~.)+stat_smooth(method=lm)


