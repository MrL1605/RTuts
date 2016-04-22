
# K Means

Iris = read.csv("Iris.csv")
summary(Iris)

Iris.k2 <- Iris
Iris.k2$sepal.length <- NULL
Iris.k2$sepal.width <- NULL
Iris.k2$class <- NULL
plot(Iris.k2)

results <- kmeans(Iris.k2 ,3)
results
results$size
results$cluster
factor(results$cluster)
class(factor(results$cluster))

library("ggplot2")
qplot(Iris.k2$petal.length, Iris.k2$petal.width, color = factor(results$cluster))
plot(Iris.k2$petal.length, Iris.k2$petal.width, col = factor(results$cluster))
plot(Iris.k2$petal.length, Iris.k2$petal.width, col = factor(Iris$class))




# Using all 4 attributes

Iris.k4 <- Iris
# Remove class attr
Iris.k4$class <- NULL

results <- kmeans(Iris.k4, 3)
# As there are 3 unique values in class variable

results
table(Iris$class, results$cluster)
