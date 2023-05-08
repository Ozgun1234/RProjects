# Method 1 to retrieve data set.
library(datasets)
data("iris")

# Method 2 read from my github for flexibility.
library(RCurl)
path <- "https://raw.githubusercontent.com/Ozgun1234/data/main/iris.csv"
my_iris <- read.csv(text = getURL(path))

# View Data
#View(my_iris)


# Dispaly summary statistics 

# head() / tail()
head(my_iris, 4)
tail(my_iris, 4)

# summary()
summary(my_iris)
summary(my_iris$Sepal.Length)


# Check to see if there are missing data

sum(is.na(my_iris))

# skimr() - Handy lib to expand on summary() for larger sets.
# install.packages("skimr")

library(skimr)
skim(my_iris)

# Group data by Species then pergorm skim.
grouped_data <- aggregate(
  x = my_iris,
  by = list(my_iris$Species),
  FUN = order
)

