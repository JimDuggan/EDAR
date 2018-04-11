
# the global list of account objects, initially empty
g.accounts<-list()

# adding an account to the global list
addAccount<-function(a){
  index<-length(g.accounts)+1
  g.accounts[[index]]<<-a
}

# Getting the index of an account
getAccountIndex<-function(id){
  bool<-sapply(g.accounts,function(x)x$number==id)
  which(bool==TRUE)
}

# Create a constructor object (usually same name as class)
account<-function(id, bal, hist=NULL){
  structure(list(number=id,balance=bal,history=hist),
            class="account")
}

# debit an account
debit.account<-function(x,amt){
  x$balance<-x$balance-amt
  x$history<-c(x$history,paste("DR:",amt,sep=""))
  return(x)
}

# credit an account
credit.account<-function(x,amt){
  x$balance<-x$balance+amt
  x$history<-c(x$history,paste("CR:",amt,sep=""))
  return(x)
}

get.transactions.account<-function(x){
  return(x$history)
}

#generic functions
debit<-function(o,value){
  UseMethod("debit")
}

credit<-function(o,value){
  UseMethod("credit")
}

get.transactions<-function(o,value){
  UseMethod("get.transactions")
}


# print the account information
print.account<-function(x){
  cat("Printing account information...\n")
  cat("Customer Number = ",x$number,"\n")
  cat("Customer Balance = ",x$balance,"\n")
  cat("Transaction History = ",x$history)
}

addAccount(account("12345678", 100.00))
addAccount(account("02345679", 1000.00))

i<-getAccountIndex("12345678")
g.accounts[[i]]<-credit(g.accounts[[i]],200)
g.accounts[[i]]<-debit(g.accounts[[i]],199)

i<-getAccountIndex("02345679")
g.accounts[[i]]<-credit(g.accounts[[i]],1200)
g.accounts[[i]]<-credit(g.accounts[[i]],900)

print(g.accounts[[1]])
print(g.accounts[[2]])

trans<-get.transactions(g.accounts[[1]])

cat("Trans1 = ", trans,"\n")

trans<-get.transactions(g.accounts[[2]])
cat("Trans2 = ", trans,"\n")

# all accounts with a balance greater than 100
g.accounts[sapply(g.accounts,function(x)x$balance>111)]


# all accounts with a balance between 90 and 120
g.accounts[sapply(g.accounts,function(x)x$balance>90 && x$balance < 120)]



