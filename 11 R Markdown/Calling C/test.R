# To compile the file: 
# R CMD SHLIB test.c

dyn.load("11 R Markdown/Calling C/test.so")

mysqrt <- function(v){
  .C("mysqrt", size=as.integer(length(v)),
               input=as.double(v),
               output=as.double(vector(length=length(v))))[['output']]
}
