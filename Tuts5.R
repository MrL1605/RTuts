
# Data Frame

# Sample data
weights <- c(300, 200, 100, 250,150)
prices <- c(9000,5000,12000,7500,18000)
types <- c("gold", "silver", "gems", "gold", "gems")

# Creating a Data Frame
treasure <- data.frame(weights, prices, types)
treasure
treasure[[2]]
treasure[["weights"]]     # Took var names as col names
treasure[[1,2]]           # R, C


list.files()
read.csv("targets.csv", sep = ",")
# Decides the sep using first 5 lines of text.
read.csv("targets.csv")
readLines("infantry.txt")
read.table("infantry.txt", sep = "\t")
read.table("infantry.txt", sep = "\t", header = TRUE)

targets <- read.csv("targets.csv")
infantry <- read.table("infantry.txt", sep="\t", header=TRUE)
targets
infantry
merge(x = targets, y = infantry)
# Inner Joins the table with same col name. Not data
merge(x = targets, y = infantry, all.y = TRUE)


# Sample data
# install.packages("gdata")
library(gdata)

data.gdp <- read.csv("gdp.csv", sep = ",", header = TRUE)
data.mortality <-
  read.csv("infant_mortality.csv", sep = ",", header = TRUE)
# gdata used here
data.mortality<- 
  read.xls ("infant_mortality.xlsx", header = TRUE)

# gdp
head(data.gdp)
tail(data.gdp)
summary(data.gdp)

# moratality
head(data.mortality)
tail(data.mortality)
summary(data.mortality)

countries <- merge(x = data.gdp, y = data.mortality)
names(countries) <- c("country", "gdp", "mortality")

# Is there correlation?
summary(countries)
plot(countries$gdp, countries$mortality)

# Correlation
cor.test(countries$gdp, countries$mortality)

# p value  = 0.00000264841
# Correlation with a p-value less than 0.05 is considered 
# statistically significant

# Methods - kendall, spearm
cor.test(countries$gdp, countries$mortality, method = "kendall")

# Linear Model
line <- lm(countries$mortality ~ countries$gdp)
# Response var ~ Predictor var
# tilde character '~'
abline(line)
# Used for Prediction of how common infant mortality is, 
# in relation to GDP of country 



