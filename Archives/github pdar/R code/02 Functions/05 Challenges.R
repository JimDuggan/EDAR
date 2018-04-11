s <- sample(c("A","B","C"),size=10,replace = T)

# A function that filters a vector to return all even numbers


evens <- function(v){
  v[v %% 2 == 0]
}

# Write a function that takes in a vector and returns a vector with no duplicates

my_unique <- function(v) v[!duplicated(v)]




# test case
s <- sample(LETTERS[1:5],size=10,replace = T)



