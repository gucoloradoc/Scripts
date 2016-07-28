library(ggplot2)
library(datasets)
# Scatter plot: carat (x), price (y), clarity (col)
ggplot(diamonds, aes(x=carat, y= price, col= clarity)) +
    geom_point()


# Adjust for overplotting
ggplot(diamonds, aes(x=carat, y= price, col= clarity)) +
    geom_point(alpha=0.5)

# Scatter plot: clarity (x), carat (y), price (col)
ggplot(diamonds, aes(x=clarity, y= carat, col= price)) +
    geom_point()

# Dot plot with jittering
ggplot(diamonds, aes(x=clarity, y= carat, col= price)) +
    geom_point(position ="jitter")
