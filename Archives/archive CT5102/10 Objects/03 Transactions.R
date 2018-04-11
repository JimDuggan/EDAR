# Example of S4 objects in R, Accounts and Transactions

setClass("Account",
         slots=list(
           number="character",
           balance="numeric",
           transactions="list",
           counter="integer"))

setClass("Transaction",
         slots=list(
           number="integer",
           type="character",
           amount="numeric",
           oldBalance="numeric",
           newBalance="numeric"))

# Constructor Function
account<-function(number, balance){
  new("Account",number=number,balance=balance, 
          transactions=list(), counter=1L)
} 


setGeneric(name="credit",
           def=function(object,value)
           {
             standardGeneric("credit")
           }
)

setMethod(f="credit",signature="Account",
          function(object,value){
            t<-new("Transaction",
                   type="CR",
                   number=object@counter,
                   amount=value, 
                   oldBalance=object@balance,
                   newBalance=object@balance+value)
            object@balance<-object@balance+value
            object@transactions[[object@counter]]<-t
            object@counter<-object@counter+1L
            return(object)
          }
)

setGeneric(name="debit",
           def=function(object,value)
           {
             standardGeneric("debit")
           }
)


setMethod(f="debit",signature="Account",
          function(object,value){
            t<-new("Transaction",
                   type="DR",
                   number=object@counter,
                   amount=value, 
                   oldBalance=object@balance,
                   newBalance=object@balance-value)
            object@balance<-object@balance+value
            object@transactions[[object@counter]]<-t
            object@counter<-object@counter+1L
            return(object)
          }
)

setMethod("show","Account",
          function(object){
            cat("Updated Information on Account\n")
            cat("Account Number = ",object@number,"\n")
            cat("Account Balance = ",object@balance,"\n")
            cat("Counter = ",object@counter,"\n")
            for(t in object@transactions){
              cat("\n\tTransaction Number = ",t@number,"\n") 
              cat("\tAmount = ",t@amount,"\n") 
              cat("\tType= ",t@type,"\n") 
              cat("\tOld Balance = ",t@oldBalance,"\n") 
              cat("\tNew Balance = ",t@newBalance,"\n") 
            }
          }
)


     

a1<-account("12345678",200)
a1<-credit(a1,300)
a1<-credit(a1,1000)

# removeMethod("show","Account") useful to remove show
            