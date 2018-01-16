## Part 1: Debugging

install.packages("stringr")
library("stringr")

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# There is no default value the function sum() uses for strings. Fails to sum "?. ?."


my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# You need to load the package to use the str_length() function.

said.the.famous <- paste(my.line, " - ", initials)

# Describe why this doesn't work: 
# The initials variable is spelt with an s at the end...


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
part2.vector <- c()
typeof(part2.vector)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  n <- abs(length(vector1) - length(vector2))
  return.statement <- paste0("The difference in lengths is ", n)
  return(return.statement)
}

# Pass two vectors of different length to your `CompareLength` function
part2.vector.length2 <- c("a", "b")
print(CompareLength(part2.vector.length2, part2.vector))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2) {
  n <- length(vector1) - length(vector2)
  if (n > 0) {
    return.statement <- paste0("Your first vector is longer by ", n, " elements")
  } else {
    return.statement <- paste0("Your second vector is longer by ", n, " elements")
  }
  return(return.statement)
}

# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(part2.vector.length2, part2.vector))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


