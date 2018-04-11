
x<-c(5,34,89)

for(n in x){
  print(n^2)
}

x<-c(5,34,89)

for(n in 1:length(x)){
  print(x[n]^2)
}

i<-1
while(i<=length(x)){
  print(x[i]^2) 
  i<-i+1
}

i<-1
while(TRUE){
  print(x[i]^2) 
  i<-i+1
  if(i>length(x)) break
}

i<-1
repeat {
  print(x[i]^2) 
  i<-i+1
  if(i>length(x)) break
}

x<-10

if(x %% 2 == 0){
  print("Even number...")
}

x<-11
if(x %% 2 == 0){
  print("Even number...")
} else 
  {
  print("Odd number...")
  }

x<-0
if(x<0){
  print("Negative number")
} else if (x > 0){
  print("Positive number")
} else {
  print("Zero!")
}

cost<-function(age, card=F){
  if(age < 5){
    return (0)
    } else if(age < 18){
       return (8)
    } else if(age < 55 && card){
      return (8)
    } else if (age < 55 && !card){
      return (12)
    } else{
      return (6)
    }
}

ages<-c(19,20,31,34)
lt21<-ages<21
student<-c(T,F,T,F)

and<-function(...){
  l<-list(...)
  
  
}
