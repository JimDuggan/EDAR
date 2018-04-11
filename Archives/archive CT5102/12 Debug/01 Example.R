fError<-function(v){
  v1<-v %% 2 == 0
  v2<-v[v1]
  error<-log('AAA')
  return(v2)
}
f1<-function(){fError(1:10)}
f2<-function(){f1()}


fEvens1<-function(v){
  v1<-v %% 2 == 0
  v2<-v[v1]
  browser()
  return(v2)
}

options(error=dump.frames)

f2()



