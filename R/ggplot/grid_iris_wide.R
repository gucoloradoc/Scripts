library(ggplot2)
library(datasets)
#grid graph
# Consider the head of iris, iris.wide and iris.tidy (in that order)
#head(iris)
#head(iris.wide)
#head(iris.tidy)
iris.wide <- read.csv("iris.wide.csv")
# Think about which dataset you would use to get the plot shown right
# Fill in the ___ to produce the plot given to the right
ggplot(iris.wide, aes(x = Length, y = Width, col = Part)) +
  geom_jitter() +
  facet_grid(. ~ Species)
