people <- LETTERS[1:10]

set.seed(100)
link <- sample(c(0,1),100,replace = T)

conn <- matrix(link,nrow = 10)
diag(conn) <- 0

colnames(conn) <- people
rownames(conn) <- people

follows <- apply(conn,1,sum)
followed_by <- apply(conn,2,sum)

# peson who follows most


