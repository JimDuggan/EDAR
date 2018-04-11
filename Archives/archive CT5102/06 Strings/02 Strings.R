r<-c("River Liffey","River Lee","Corrib")
r
i<-grep("River",r)
i
r[i]

r<-c("River Liffey","River Lee","Corrib")
r
b<-grepl("River",r)
b
r[b]

s<-"Hello World"
nchar(s)
r
nchar(r)

paste("CT5102", "Programming for Data Analytics", sep="-")


id<-"12345678"
grade<-78
sprintf("Student %s received a grade of %d",id,grade)

str<-"National University of Ireland Galway"
substring(str,10,19)

numbers<-c("+353-76-111111","+44-112282772")
strsplit(numbers,"-")

chartr("A-Z","a-z",c("Galway","DUBlin"))



# simple regular expressions

c<-c("Galway","Mayo","Roscommon","Sligo","Leitrim")
grep("[oi]",c)
grep("Ga",c)
grep("go",c)
grep("[S-Z]",c)

t<-c("AA001BB","AAAAA","AA1AA","BBB111BBB","CCC11C11")
grep("[0-9]{3}",t)
grep("[0-9]{2,3}",t)
grep("[0-9]*",t)
grep("B{3}",t)
grep("B{3}[0-9]{3}",t)
grep("B{3}|C{3}[0-9]{2,3}",t)

grep("[[:digit:]]{3}",t)
grep("[[:alpha:]]{5}",t)

# valid phone id

pattern<-"^[[:digit:]]{3}-[[:digit:]]{7}$"
grepl(pattern,"087-111111")
grepl(pattern,"087-1111111")
grepl(pattern,"087-1111111 ")


# valid credit card number
pattern<-"^[[:digit:]]{16}$"
grepl(pattern,"7777666655554444")
grepl(pattern,"77776666A5554444")

pattern<-"^[[:xdigit:]]{16}$"
grepl(pattern,"77776666A5554444")
grepl(pattern,"7777666ZA5554444")

# valid credit card number
pattern<-"^([[:digit:]]{4}[[:blank:]]){3}[[:digit:]]{4}$"
grepl(pattern,"7777 6666 5555 4444")
grepl(pattern,"77776666A5554444")

ns<-c("7777 6666 5555 4444","   A777 6666 5555 4444","7777 6666 5555 4444 ")
grepl(pattern,ns)

str_trim(ns)


# Challenge....

#A valid IP address must be in the form of xxx.xxx.xxx.xxx, 
#where xxx is a number from 0-255

pattern<-"^([[:digit:]]{1,3}\\.){3}[[:digit:]]{1,3}$"
pattern
grepl(pattern,"1.1.1.1")
grepl(pattern,"1.1.1.1.1")
grepl(pattern,"1.1111.1.1.1")
grepl(pattern,"111.1.1.000")
grepl(pattern,"111.1*1.000")


pattern<-"^[.[:alpha:]][._[:alnum:]]*$"

# valid email address?
# alpha, alphanumeric or dot










