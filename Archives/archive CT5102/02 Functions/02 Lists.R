s1<-list(id="1234567",fName="Jane", sName="Smith", age=21)
s2<-list(id="1234568",fName="Matt", sName="Johnson", age=25)

class<-list(s1,s2)

c1<-list(City="Dublin",    Population=1110627)
c2<-list(City="Cork",      Population=198582)
c3<-list(City="Limerick",  Population=91454)
c4<-list(City="Galway",    Population=76778)
c5<-list(City="Waterford", Population=51519)
c6<-list(City="Drogheda",  Population=38578)
c7<-list(City="Drogheda",  Population=37816)

cities<-list(c1,c2,c3,c4,c5,c6,c7)

# first find the locations of the match
b<-sapply(class,function(x)x$age>21)

# then find the list elements
ans<-class[b]


