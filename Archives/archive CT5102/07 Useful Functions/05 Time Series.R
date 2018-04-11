
# Montly rainfall in athenry from 2012-2014
rainA<-c(131.1,  62.3,   30.5, 	 74.8,	 48.2,	175.6,
         117.9,	114.2,	101.4,	127.7,	131.8,	153.2,
         132.2,	 46.5,	 36.9,	102.4,	 97.2,	 61.4,	
         101.5,	 72.8,	 47.9,	120.0,	100.0,	220.3,
         182.5,	177.7,	103.1,	 47.6,	103.1,	 38.6,
         92.4,	104.9,	 10.4,	140.9,	139.0,	124.1)

qplot(x=1:length(rainA),y=rainA,geom=c("point","line"))

r.ts<-ts(rainA,start=c(2012,1),end=c(2014,12),frequency=12)

aggregate(r.ts)



y<-window(r.ts,
       start=c(2012,1),
       end=c(2012,4))

x<-window(r.ts,delat=1)



library(zoo)

r.ts
as.yearmon(time(r.ts))

as.yearmon(time(r.ts))[which.max(r.ts)]

as.yearmon(time(r.ts))[which.min(r.ts)]




frequency(r.ts)
time(r.ts)

qplot(x=time(r.ts),y=r.ts,geom=c("point","line"))




        
      

