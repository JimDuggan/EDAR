oddcount<-function(v){
  count<-length(v[v%%2 == 1])
}

f1<-function(){
  cat("Hello World\n")
}

f2<-function(f){
  f()
}

f3<-function(a){
  f4<-function(b){
    ans<-a+b
  }
  
  print(environment((f4)))
  res<-f4(a^2)

}

print(environment(f3))


convC2F<-function(celsius)
{
  fahr<-celsius*9/5 + 32.0
  return(fahr)
}

convert<-function(func, input)
{
   ans<-func(input)
   return (ans)
}

test<-function(n1,n2=20){
  n1+n2
}


add<-function(a,b,...){
  a+b
  dots<-list(...)
  cat(names(dots))
}

str(rnorm)

cube<-function(x)
{
  cat("Global variable = ",y)
  x^3
}

y<-25

cube(10)


diff<-function(x,y){
  x-y
}

#f(x) = 3x2+5x+10


mean.of.all<-function(...)
{
  all<-c()
  for(x in list(...))
  {
    all<-c(all,x)
  }
  
  mean(all)
}

mean.of.means<-function(...)
{
  means<-c()
  for(x in list(...))
  {
    means<-c(means,mean(x))
  }
  
  mean(means)
}

# challenges
get.odd.count<-function(x){
  length(x[!(x %% 2 == 0)])
}

filter.even.numbers<-function(x){
  x[x%%2==0]
}

get.unique.values<-function(x){
  x[!duplicated(x)]
}

#to process a vector and return the absolute difference of 
#every element from the mean

v<-rnorm(100,mean=100,sd=10)
d<-sapply(v,function(x,y)abs(x-y),mean(v))

t<-seq(-100,100,by=1)
f.t<-sapply(t,function(x)3*x^2+5*x+10)





