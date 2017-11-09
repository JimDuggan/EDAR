# Example 1
(y <- 1:10)


(attr(y,"Test") <- 10)

(x <- y)


(z <- y[1:10])


# Example 2
(y <- 1:10)


class(y)<- "xyz"

(x <- y)


(z <- y[1:10])

