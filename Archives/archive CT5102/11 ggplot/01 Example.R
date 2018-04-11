library(ggplot2)

dat<-data.frame(xval=1:4,
                yval=c(3,5,6,9),
                group=c("A","B","A","B"))


ggplot(dat,aes(x=xval,y=yval)) + geom_point()

ggplot(dat,aes(x=xval,y=yval)) + geom_point(size=10)

ggplot(dat,aes(x=xval,y=yval)) + 
      geom_point(colour="red", size=10)

ggplot(dat,aes(x=xval,y=yval)) + geom_point() + 
       scale_x_continuous(limits=c(0,10))

ggplot(dat,aes(x=xval,y=yval)) + 
      geom_point(aes(colour=group), size=3)

ggplot(dat,aes(x=xval,y=yval)) + 
  geom_point(aes(colour=group), size=3) +
   scale_color_manual(values=c("green","red"))

ggplot(dat,aes(x=xval,y=yval)) + 
  geom_line(size=2)+
    geom_point(size=4,colour="red")+
      title("This is the title")









