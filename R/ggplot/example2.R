library(ggplot2)
library(datasets)

# Create the object containing the data and aes layers: dia_plot
dia_plot <- ggplot(diamonds, aes(x= carat, y= price))

# Add a geom layer with + and geom_point()
dia_plot + geom_point()

# Add the same geom layer, but with aes() inside
dia_plot + geom_point(aes(col= clarity))
