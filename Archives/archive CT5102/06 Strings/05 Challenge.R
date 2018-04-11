library(stringr)
plist<-sample(c("087","086","085"),100,replace=T)
plist[1:5]
nums<-sample(1111111:9999999,100)
nums[1:5]
list1<-str_c(plist,nums,sep="-")
list1[1:5]

new<-str_c("+353-",
           str_sub(list1, start=2, end=3),
           str_sub(list1,start=4,end=length(plist)))
new[1:5]


anon<-str_replace_all(new,"\\+353(-)85(-)[[:digit:]]{7}","+XXX-XX-XXXXXXX")
anon[1:5]


#A valid IP address must be in the form of xxx.xxx.xxx.xxx, 
#where xxx is a number from 0-255

pattern<-"^([[:digit:]]{1,3}\\.){3}[[:digit:]]{1,3}$"
pattern
grepl(pattern,"1.1.1.1")
grepl(pattern,"1...1.1")
grepl(pattern,"1.1.1.1.1")
grepl(pattern,"1.1111.1.1.1")
grepl(pattern,"111.1.1.000")
grepl(pattern,"111.1*1.000")


pattern<-"^[.[:alpha:]][._[:alnum:]]*$"
pattern
grepl(pattern,"test")
grepl(pattern,".")
grepl(pattern,".test123-")
grepl(pattern,".test123_")


