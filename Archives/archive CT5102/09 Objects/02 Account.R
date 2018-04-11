# defining an object
a1<-list(number="1234",balance=200.98, history=NULL)
class(a1)<-"account"

a2<-list(number="1222",balance=100.11,history=NULL)
class(a2)<-"account"


print.account<-function(o){
  cat("Special purpose print method...\n")
  cat("Account number = ",o$number,"\n")
  cat("Account balance = ",o$balance,"\n")
  cat("History = ",o$history,"\n")
}

credit.account<-function(o, amount){
  cat("Calling credit...\n")
  o$balance<-o$balance + amount
  o$history<-c(o$history,paste("CR:",amount,sep=""))
  return(o)
}

debit.account<-function(o, amount){
  cat("Calling debit...\n")
  o$balance<-o$balance - amount
  o$history<-c(o$history,paste("DR:",amount,sep=""))
  return(o)
}

credit<-function(obj,amt){
  UseMethod("credit",obj)
}

debit<-function(obj,amt){
  UseMethod("debit",obj)
}

show<-function(o){
  UseMethod("show",o)
}