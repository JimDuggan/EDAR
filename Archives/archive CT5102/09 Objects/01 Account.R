a1<-list(number="1234",balance=200.98)
a2<-list(number="1222",balance=100.11)

class(a1)<-"accountA"
class(a2)<-"accountB"

createAccount<-function(l){
  class(l)<-"account"
  l
}

show.accountA<-function(o){
  cat("Account type A\n")
  cat("Account number = ",o$number)
  cat("Account balance = ",o$balance,"\n")
}

show.accountB<-function(o){
  cat("Account type B\n")
  cat("Account number = ",o$number)
  cat("Account balance = ",o$balance,"\n")
}


show<-function(o){
  UseMethod("show",o)
}