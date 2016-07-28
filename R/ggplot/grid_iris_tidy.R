library(ggplot2)
library(datasets)
#Grid graph in ggplot2
# Consider the structure of iris, iris.wide and iris.tidy (in that order)
str(iris)
#str(iris.wide)
iris.tidy <- read.csv("iris.tidy.csv")
str(iris.tidy)
# Think about which dataset you would use to get the plot shown right
# Fill in the ___ to produce the plot given to the right
ggplot(iris.tidy, aes(x = Species, y = Value, col = Part)) +
  geom_jitter() +
  facet_grid(. ~ Measure)
