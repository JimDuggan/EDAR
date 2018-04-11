andf<-function(...){
  df<-data.frame(list(...))
  #apply(df,1,prod) == 1
  apply(df,1,prod)
}

v1<-c(T,T,F)
v2<-c(T,F,F)
v3<-c(T,T,F)

andf(v1, v2, v3)