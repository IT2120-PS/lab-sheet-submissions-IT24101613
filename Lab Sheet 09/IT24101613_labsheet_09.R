setwd("//Users//sawanyakodagoda//Desktop//IT24101613")

x <- rnorm(25, mean=45, sd=2)
t.test(x, mu=46, alternative = "less")