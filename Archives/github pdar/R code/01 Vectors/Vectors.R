# Creating vectors

dbl_var <- c(2.2, 2.5, 2.9)
str(dbl_var)

int_var <- c(0L, 1L, 2L)
str(int_var)

log_var<- c(TRUE, TRUE, F, FALSE)
str(log_var)

chr_var<- c("CT5102","CT561")
str(chr_var)

dbl_var
typeof(dbl_var)
int_var
typeof(int_var)
log_var
typeof(log_var)
chr_var
typeof(chr_var)


is.integer(dbl_var)
is.integer(int_var)
is.integer(log_var)
is.integer(chr_var)

is.double(dbl_var)
is.double(int_var)
is.double(log_var)
is.double(chr_var)

is.numeric(dbl_var)
is.numeric(int_var)
is.numeric(log_var)
is.numeric(chr_var)

is.logical(dbl_var)
is.logical(int_var)
is.logical(log_var)
is.logical(chr_var)


is.character(dbl_var)
is.character(int_var)
is.character(log_var)
is.character(chr_var)

is.atomic(dbl_var)
is.atomic(int_var)
is.atomic(log_var)
is.atomic(chr_var)

# coercion rules

v1<- c(1L, T, FALSE)

v2<- c(1L, T, FALSE, 2)

v3<- c(T, FALSE, 2, "FALSE")

v4<- c(2L, "FALSE")

v5<- c(0L, 1L, 2.11)





v1
typeof(v1)


v2
typeof(v2)





typeof(c(T,"Hello"))

