Account<-setRefClass("Account")

a1<-Account$new()


Account<-setRefClass("Account",
                     fields = list(balance="numeric"))

a1<-Account$new(balance=100.00)

a1$balance<-a1$balance+20

a1$balance
