now()

today()

start_2016 <- ymd_hms("2016-01-01 00:00:00")
start_2016

is.instant(start_2016)

span <- interval(now(), start_2016)


d <- duration(60)

now() + months(3)

a10 <- ymd_hms("2010-04-10 21:33:29")

a10

round_date(a10, "day")

ceiling_date(a10, "day")

floor_date(a10, "day")

round_date(a10, "month")

ceiling_date(a10, "month")

floor_date(a10)

