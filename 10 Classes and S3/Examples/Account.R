# account S3 example

account <- function(id,bal){
  structure(list(Id=id,bal=bal,hist=c()),class="account")
}

debit <- function(acc,amt){
  cat("Calling debit generic method...\n")
  UseMethod("debit")
}

credit <- function(acc,amt){
  cat("Calling credit generic method...\n")
  UseMethod("credit")
}

debit.account <- function(acc, amt){
  cat("Calling debit.account method...\n")
  acc$bal <- acc$bal - amt
  acc$hist <- c(acc$hist,acc$bal)
  acc
}

debit.default <- function(acc,amt){
  cat("Calling debit.default method...\n") 
}

credit.account <- function(acc, amt){
  cat("Calling credit.account method...\n")
  acc$bal <- acc$bal + amt
  acc$hist <- c(acc$hist,acc$bal)
  acc
}

credit.default <- function(acc,amt){
  cat("Calling credit.default method...\n") 
}


a1 <-account("123",100)

a1 <- credit(a1,10)

a1 <- debit(a1,10)

