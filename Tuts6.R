
# GGPlot package
# install.packages("ggplot2")

help(package = "ggplot2")
library("ggplot2")

weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)

qplot(weights, prices, color = types)


# Other Topics yet left :
# Functions
# Class
# 



