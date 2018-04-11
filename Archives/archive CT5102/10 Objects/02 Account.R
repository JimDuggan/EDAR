setClass("Account1",
         slots=list(number="character",
                    balance="numeric",
                    history="character")
         )

a1<-new("Account1",number="111111",balance=100)

removeMethod("show","Account")


setMethod("show","Account",
   function(object){
     cat("Information on Account\n")
     cat("Account Number = ",object@number,"\n")
     cat("Account Balance = ",object@balance,"\n")
   }
)

setGeneric(name="credit",
           def=function(object,value)
           {
             standardGeneric("credit")
           }
)

setMethod(f="credit",signature="Account",
          function(object,value){
            object@balance<-object@balance+value
            return(object)
          }
)
     

a1<-credit(a1,300)

            