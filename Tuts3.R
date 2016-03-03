
# Matrices


matrix(1, 3, 4)
# Matrix 3 rows by 4 columns, 
# with all its fields set to 0.

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

# Indexes
b[2,4]
b[2,4] <- 2
b
b[2,]
b[,4]
# Put a range of vector in it and it takes those as indexes.
b[, 2:4]


elevation <- matrix(1, 10, 10)
elevation[4, 6] <- 0
persp(elevation)

elevation[2,2] <- 1.8
persp(elevation)
persp(volcano)
image(volcano)

