dyn.load("12 Debug/test.so")

mysqrt <- function(v){
  .C("mysqrt", size=as.integer(length(v)),
               input=as.double(v),
               output=as.double(vector(length=length(v))))[['output']]
}
