a1<-list(number="1234",balance=200.98)

class(a1)<-"account"

a2<-structure(list(number="5678", balance=100.23), 
              class="account")

accountFactory<-function(id, bal){
  structure(list(number=id,balance=bal),
            class="account")
}

currentAccountFactory<-function(id, bal,int=0.0){
  structure(list(number=id,balance=bal,interest=int),
            class=c("currentaccount","account"))
}

print.account<-function(x){
  cat("Printing account information...\n")
  cat("Customer Number = ",x$number,"\n")
  cat("Customer Balance = ",x$balance,"\n")
}


