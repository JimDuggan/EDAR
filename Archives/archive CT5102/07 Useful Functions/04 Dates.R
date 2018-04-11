getCurrentTime<-function(){
  options(digits.secs=3)
  list(Date=Sys.Date(),Timestamp=Sys.time())
}

date_now<-Sys.Date()

s1<-as.Date("2015-11-27","%Y-%m-%d")

weeks<-difftime(s1, now, unit="week")
days<-difftime(s1, now, unit="day")

today <- strptime("2015-10-17 14:29:55", "%Y-%m-%d %H:%M:%S")
today <- strptime("2015-10-17 14:29:55.111", "%Y-%m-%d %H:%M:%OS")
ls
date_now<-Sys.Date()
time_now<-Sys.time()

Jan1 <- strptime("02:01:01", "%H:%M:%S")
