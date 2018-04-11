tibble(
   Today=today(),
   Now=now())

ymd_h("2017-01-31 10")

ymd_hm("2017-01-31 10:10")

ymd_hms("2017-04-30 10:10:22")


(t1 <- ymd_hms("2017-07-24 10:10:22"))

(t2 <- ymd_hms("2017-07-25 10:30:22"))

difftime(t2,t1,units = "days")

difftime(t2,t1,units = "hours")

difftime(t2,t1,units = "mins")



t1


t2

abs(t2 - t1)





ymd_hms("2017-04-30 10:10:22.111")

ymd_hms("2017-04-30 10:10:22",tz = "GMT")
ymd_hms("2017-01-31 10:10:22",tz = "CET")
ymd_hms("2017-01-31 10:10:22.400",tz = "CET")


flights %>% 
  select(year,month,day,hour,minute)

flights %>%
  transmute(
    TestDate = make_date(year,month,day),
    TestTime = make_datetime(year,month,day,hour,minute)
  )

flights %>% filter(!is.na(dep_time),!is.na(arr_time)) %>%
  mutate(dep_time=make_datetime(year,month,day,
                                dep_time %/% 100,
                                dep_time %% 100),
         dep_day=wday(dep_time,label=T)) %>%
  ggplot(aes(x=dep_day)) + geom_bar()

(t1 <- ymd_hms("2017-07-08 12:34:12"))

year(t1) <- 2015

hour(t1) <- hour(t1) + 1

t1

second(t1) <- second(t1) + 49

t1

t <- now()

t1 <- ymd_hms(t,tz="America/New_York")
 
t2 <- ymd_hms(t,tz="Europe/Dublin")

t2 - t1

as.duration(t2 - t1)

t1 <- ymd_hms("2017-07-24 10:10:22")



