library(pryr)

accountFactory<-function(id, bal, hist=NULL){
  structure(list(number=id,balance=bal,history=hist),
            class="account")
}

a1<-accountFactory("12345678", 100.00)

otype(a1)
otype(a1$number)

