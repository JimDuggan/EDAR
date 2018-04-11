g1<-100

f1<-function(){
  print(g1)
  g1<-20
}

f1()
print(g1)

g2<-100

f2<-function(){
  print(g2)
  g2<<-20
}

f2()
print(g2)


f3<-function(){
  f4<-function(){
    g3<<-40
    g5<-10
    f5<-function(){
      g4<<-20
      g5<<-45
    }
    f5()
    print(g5)
  }
  
  f4()
  print(g3)
}

f3()


f7<-function(){
  assign("g9",10,pos=.GlobalEnv)
}




