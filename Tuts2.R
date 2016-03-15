
# Data Types

# Vectors
# Always stores only one type of DataStructure in it.
# similar to array in C, but not list

c(1, NULL, 25, 3)
c('V', 'I', 'T', "University")

y <- c(1L, "string", FALSE)
# ?guess
y
class(y)

y <- c(1L, 2, 5)
# ?guess
y
class(y)

x <- c(1, NULL, 25, 6)
length(x)

# Sequences
1:10
9:5
seq(1,10)
seq(9,2,-2)
sent <- c("walk","on","the","planet")
sent[0]
# Not same as of Python or many Languages
sent[2]
sent[3] <- "that"
sent
sent[2:4] <- c("over", "that", "place")
c(1:3,100,1000)

# Naming
ranks <- 1:3
names(ranks) <- c("first", "second", "third")
ranks
# IMP
ranks["first"]
ranks[c("first", "third")]

# Small start towards Graphs
vesselsSunk <- c(4, 5, 1)
barplot(vesselsSunk)
# Why to use Names?
names(vesselsSunk) <- c("England", "France", "Norway")
barplot(vesselsSunk)

# Operations
a <- c(10, 25, 30, 15)
a * 2
a / 2
a > 20
b <- c(4, 5, 10, -20)
a - b
b <- c(5, 10)
a - b
b <- c(10, 25, 30)
a + b
a == c(10, 25, 34)

b <- c(5, 10, 25)
a <- c(10, 15, 12)
plot(a,b)       # X, Y
plot(a)         # Y

# Handling NAs
sum(25,NULL, 25)
sum(25,NaN, 25)
sum(25,NaN, 25, na.rm = TRUE)
a <- c(2,NaN, 25)

# NaN is Not a Number (checks if a number or not, string - FALSE)
is.nan(a)
is.null(NULL)       # Works only on Primitives
is.null(c())

is.infinite(pi/0)
# So which one is NA? `which` returns index which is NA
which(is.na(a))

# Any guess?
b <- c(2, NaN, "string")
is.nan(b)
b

# Conversion to Numeric
a <- c("55.6", 25, 85.6)
as.numeric(a)
class(as.numeric(a))
a <- c("55L", 25L, 85L)
as.numeric(a)

###############################################3
# Summary

v <- c(1L, "NULL", TRUE)        # Vector has 1 data type

length(v)                       # Some Functions
sum(v)
paste(v)
names(v) <- c("name","is","this")
v["name"]
v/2
c(2:5, 10, 1000)
# --


is.na(v)
is.nan(v)
as.numeric(v)



