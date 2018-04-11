vp<-function(v){
  # Need to escape . with \\
  p<-"^08[5-7](-|\\.)[[:digit:]]{7}$"
  b<-grepl(p,v)
  list(input=v,output=b)
}



test<-c("085*1234567","085.1234567","085-1234567",
        "084-1234567","085-234567","091.1234567")

result<-vp(test)

expected<-c(F,T,T,F,F,F)

passed<-all(expected == result$output)

if(passed)
  cat("All tests passed\n") else
  cat("Test suite did not pass...")


is_var<-function(v){
  p<-"^[\\.[:alpha:]][\\._[:alnum:]]*$"
  b<-grepl(p,v)
  list(input=v, output=b)
}

v<-c("1test",".test","test12---")
is_var(v)

