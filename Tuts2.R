
# Data Types

# Vectors
# Always stores only one type of DataStructure in it.
# similar to array in C, but not list

c(1, NULL, 25, 3)
c('V', 'I', 'T', "University")

y <- c(1L, "string", FALSE)
# ?guess
class(y)

y <- c(1L, 2, 5)
# ?guess
class(y)

x <- c(1, NULL, 25, 6)
length(x)

1:10
9:5
seq(1,10)
seq(9,2,-2)
sent <- c("walk","on","the","planet")
sent[0]
# Not same as of Python
sent[2]
sent[3] <- "that"
sent
sent[2:4] <- c("over", "that", "place")

# Naming
ranks <- 1:3
names(ranks) <- c("first", "second", "third")
ranks
ranks["first"]

# Graphs
vesselsSunk <- c(4, 5, 1)
barplot(vesselsSunk)
names(vesselsSunk) <- c("England", "France", "Norway")
barplot(vesselsSunk)

# Operations
a <- c(10, 25, 30)
a * 2
a / 2
a + 2
b <- c(4, 5, 10)
a-b
b <- c(5,10)
a-b
b <- c(5)
a-b
a == c(10,25,34)
