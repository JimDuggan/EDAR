x<-10
y<-20
z<-30

vars<-c("x","y","z")

for(v in vars){
  o<-get(v)
  cat(o," ")
}

v1<-1:10
v2<-11:20
v3<-21:30