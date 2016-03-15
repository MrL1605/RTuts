
# Statistics

# Sample data 
limbs <- c(4, 3, 4, 3, 2, 4, 4, 14)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 
                    'Scooter', 'Dan', 'Mikey', 'Davy Jones')

mean(limbs)
barplot(limbs)
abline(h = mean(limbs))
a <- 1:12
b <- a[1:12]
plot(a,b)
# Draws to current Graph
abline(h = mean(limbs))

barplot(limbs)
# Mean Median Mode
abline(h = mean(limbs))
abline(h = median(limbs))

# How to Calculate Mode, no built-in funct
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

# Match = Returns positions of matches of its first arg in its second.
# Or in other words fix names to values acc to its positions
limbs
unique(limbs)
match(limbs, unique(limbs))
match(c(25,3,5,2,25), c(25,5,3,1))
# Tabulate = Returns counts of each Integer occurrence
tabulate(match(limbs, unique(limbs)))
which.max(tabulate(match(limbs, unique(limbs))))
unique(limbs)[which.max(tabulate(match(limbs, unique(limbs))))]
# Position in unique vect where it is max
Mode(limbs)

# Standerd deviation
#        -------------------------------------
#  _    /  summation( (x - avg(x))^2 ) 
#   \  /   -------------------------
#    \/            n - 1
# sd <- sqrt((sum((X-mean(X))^2))/(n-1))

limbs
n <- length(limbs) 
mean <- mean(limbs)
limbs - mean
(limbs - mean) ** 2   ##### MAGIC
sum((limbs - mean(limbs)) ** 2)
sum((limbs - mean(limbs)) ** 2) / (n-1)
sqrt(sum((limbs - mean(limbs)) ** 2) / (n-1))
sd(limbs)


###############################################3
# Summary

mean(1:10)
# abline() -> h = val, v = val, 
# barplot() -> a vector
# plot() -> a,b as X,Y
# match()
# tabulate()
# which.max()
# unique()
# 




