library(stringr)

s <- sentences[1:5]

str_match(s,"(^[^ ]+) (.+) ([^ ]+)\\.$")

ans <- str_replace(s,"(^[^ ]+) (.+) ([^ ]+)\\.$","\\3 \\2 \\1.")
