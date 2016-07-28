library(ggplot2)
library(datasets)

# Add a new column called group
mtcars$group <- rep(0, length(mtcars$cyl))

# Create jittered plot of mtcars: mpg onto x, group onto y
ggplot(mtcars, aes(x= mpg, y= group)) +
    geom_jitter()

# Change the y aesthetic limits
ggplot(mtcars, aes(x= mpg, y= group)) +
    geom_jitter() +
    scale_y_continuous(limits= c(-2,2))
