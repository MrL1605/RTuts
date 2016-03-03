
# Summary Statistics

# sample data 
limbs <- c(4, 3, 4, 3, 2, 4, 4, 14)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 
                    'Scooter', 'Dan', 'Mikey', 'Davy Jones')

mean(limbs)
barplot(limbs)
abline(h = mean(limbs))
plot(a,b)
abline(h = mean(limbs))

median(limbs)
barplot(limbs)
abline(h = mean(limbs))
abline(h = median(limbs))

# Standerd deviation
# sd <- sqrt((sum((X-mean(X))^2))/(n-1))

limbs
n <- length(limbs) 
mean <- mean(limbs)
limbs - mean
(limbs - mean) ** 2
sum((limbs - mean(limbs)) ** 2)
sum((limbs - mean(limbs)) ** 2) / (n-1)
sqrt(sum((limbs - mean(limbs)) ** 2) / (n-1))
sd(limbs)





