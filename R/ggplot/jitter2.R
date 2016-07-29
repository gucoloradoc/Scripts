library(ggplot2)
library(datasets)

# The dataset mtcars is available for you

# Plot the cyl on the x-axis and wt on the y-axis
ggplot(mtcars, aes(x= cyl, y= wt)) +
    geom_point()

# Use geom_jitter() instead of geom_point()
ggplot(mtcars, aes(x= cyl, y= wt)) +
    geom_jitter()

# Define the position object using position_jitter(): posn.j
posn.j <- position_jitter(0.1)
# Use posn.j in geom_point()
ggplot(mtcars, aes(x= cyl, y= wt)) +
    geom_point(position= posn.j)
