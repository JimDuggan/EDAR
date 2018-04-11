library(gcookbook)

ggplot(uspopage,aes(x=Year,y=Thousands,fill=AgeGroup))+
    geom_area()

ggplot(data=heightweight,aes(x=heightIn))+geom_boxplot()

