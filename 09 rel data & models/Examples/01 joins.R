x <- tribble(~key,~val_x,
             1, "x1",
             2, "x2",
             3, "x3")

y <- tribble(~key,~val_y,
             1, "y1",
             2, "y2",
             4, "y3")

x1 <- tribble(~val_x,~key,
            "x1", 1, 
            "x2", 2,
            "x3", 3)

ij <- inner_join(x,y,by="key")

lj <- left_join(x,y,by="key")

rj <- right_join(x,y,by="key")

fj <- full_join(x,y,by="key")


sj <- semi_join(x,y,by="key")

aj <- anti_join(x,y,by="key")

df1 <- tribble(~x,~y,
             1, 1,
             2, 1)

df2 <- tribble(~x,~y,
             1, 1,
             1, 2)

int <- intersect(df1, df2)
un <- union(df1, df2)

df <- setdiff(df1, df2)

