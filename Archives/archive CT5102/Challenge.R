getCurrentTime<-function(){
  options(digits.secs=3)
  list(Date=Sys.Date(),Timestamp=Sys.time())
}


getTimestampInfo<-function(){
  time_now<-Sys.time()
  list(Year=strftime(time_now,"%Y"),
       MonthName=strftime(time_now,"%B"),
       Century=strftime(time_now,"%B"),
       WeekofYear=strftime(time_now,"%U"))
}