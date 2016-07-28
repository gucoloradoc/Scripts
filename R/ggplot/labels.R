library(ggplot2)
library(datasets)
#Labels in the graph.
# Map cyl to size
ggplot(mtcars, aes(x= wt, y= mpg, size=cyl)) +
    geom_point()


# Map cyl to alpha
ggplot(mtcars, aes(x= wt, y= mpg, alpha=cyl)) +
    geom_point()


# Map cyl to shape 
ggplot(mtcars, aes(x= wt, y= mpg, shape=cyl)) +
    geom_point()


# Map cyl to labels
ggplot(mtcars, aes(x= wt, y= mpg)) +
    geom_text(aes(label=cyl))
