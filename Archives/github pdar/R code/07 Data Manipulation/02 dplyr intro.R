library(dplyr)


df <- data.frame(
  color = c("blue", "black", "blue", "blue", "black"),
  value = 1:5)


df[df$color=="blue",]
filter(df, color == "blue") 

filter(df, value %in% c(1, 4))


df[df$value %in% c(1,4),]


select(df, color)
df[,"color",drop=F]

select(df, -color)

arrange(df, color)

arrange(df, desc(color))


mutate(df, double = 2 * value)
mutate(df, double = 2 * value, quadruple = 2 * double)

summarise(df, Total = sum(value))

by_color <- group_by(df, color)

summarise(by_color, total = sum(value))

summarise(by_color, 
          Mean = mean(value), 
          Median=median(value), 
          Distinct = n_distinct(value))

library(magrittr)

df1 <- mutate(df,double = 2 * value)
by_color <- group_by(df1, color)
summarise(by_color,total=sum(double))

df %>% 
  mutate(double = 2 * value) %>% 
  group_by(color)            %>%
  summarise(total=sum(double))





