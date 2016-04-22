
# Matrices

matrix(1, 3, 4)
# Matrix 3 rows by 4 columns, 
# with all its fields set to 1.

# To convert vector into matrix
a <- 1:12
a
matrix(a, 3, 4)

# Make a matrix by changing dimensions
dim(a)
b <- matrix(a, 1, 12)
b
dim(b)
dim(b) <- c(2,6)
b
dim(b) <- c(2,5)
b

# Indexes -> Row, Col
b[2,4]
b[2,4] <- 2
b
b[2,]
b[,4]
# Put a range of vector in it and it takes those as indexes.
b[, 2:4]

b[,4]
b[,4][1]
b[1,4]
b[1,4][1]
b[1,4][1][1]


elevation <- matrix(1, 10, 10)
elevation[4, 6] <- 0
elevation
persp(elevation)

elevation[2,2] <- 1.8
elevation
persp(elevation)
persp(volcano)

image(elevation)
image(volcano)
# Volcano data
dim(volcano)
head(volcano[,c(5,6,7)], 4)

###############################################3
# Summary

a <- matrix(1:50, 5, 10)
dim(a)                          # Dimensions
persp(a)
image(a)
head(a,2)


