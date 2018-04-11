Account <- setRefClass("Account",
  fields=list(balance="numeric"),
  methods=list(
    withdraw=function(x){
      balance <<- balance - x
    },
    deposit=function(x){
      balance <<- balance + x
    }
  ))

a1 <- Account$new(balance=200)

b1 <- a1

b1$deposit(100)

a1

b2 <- a1$copy()


NoOverdraft <- setRefClass("NoOverdraft",
    contains="Account",
    methods=list(
          withdraw=function(x){
            if(balance < x) stop("Not enough money!")
            balance <<- balance - x
          }))

a2 <- NoOverdraft$new(balance=100)




                       