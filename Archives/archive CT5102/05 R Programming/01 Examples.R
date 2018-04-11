#Old Faithful Geyser Data
# x - eruption time, y = waiting time until next eruption

f<-data.frame(faithful)


qplot(f$eruptions,f$waiting,xlab="Eruption Time",ylab="Time until next eruption")


w<-data.frame(women)
w_fit<-lm(weight~height,w)
coefficients(w_fit)
new.height <- data.frame(height=c(67,71))
predict(w_fit,new.height)


qplot(w$height,w$weight,xlab="Height",ylab="Weight")

f<-data.frame(faithful)
f_fit<-lm(waiting~eruptions,f)
new.etime <- data.frame(eruptions=c(3.7))
predict(f_fit,new.etime)

pred<-predict(f_fit) # predicts all the training set values

qplot(f$waiting,pred,xlab="Data",ylab="Prediction")


predict(f_fit,new.etime,interval='prediction')

w<-data.frame(women)
f<-data.frame(faithful)

for(m in c("w","f")){
  z<-get(m)
  print(lm(z[,2]~z[,1]))
}
  

