
# bit.ly/mrl_rtuts

# Resources
# John Hopkins University
# https://www.coursera.org/learn/r-programming/
# *** Use Financial AID ***
# http://swirlstats.com/    for swirl package
# http://swirlstats.com/students.html

1 + 2
# Same as Python
print (1 + 9)
"Errrr"
print ("Errrr")

print (6 * 7)
print (3 < 4)

# In C        => 1
# In Java/C++ => true
# In Python   => True
# In R        => TRUE or T

# Assignment
x = 42
x
x <- 58
x
# Use Alt + - for shortcut

x <- 3          # Assignment
x < -3          # Logical Comparision


# Operations
x / 2
x * 2
# In Python 
x ** 2
x ^ 2


# Sum of values, Python same
sum(1,2,3)
# Repeat values
rep("Yo!", 3)
sqrt(35)

times <- NULL
rep("Yo!", times = 3)
y <- rep("Yo!", times <- 3)
class(y)


# Get help of specific functions
help("median")
# Get example
example("median")

# Files
list.files()
# source("~/LinktoOtherCodes/RTuts/Tuts1.R")

# InBuilt Functions
summary(cars)
head(cars)
tail(cars)
plot(cars)

# Data Types

# Logical
v <- TRUE
class(v)

# NUmeric (contains both float and int )
v <- 2.4
class(v)

# Integer (contains int)
# v <- NULL
v <- 2L
class(v)

# Character
v <- TRUE
class(v)

# Complex
v <- 2i+3
class(v)

# RAw
v <- charToRaw('Halo')
class(v)


# So Python or R?

######################################################3
# Summary

print("Summary")      # Printing

3 < -4                # TRUE

x <- 4                # Assignment

sum(2,5,2)            # Some Functions
sqrt(25)
rep("Yes", times = 5)
help("vector")
example("data.frame")

class(25L)            # Get Data Type

