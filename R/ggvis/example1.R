library(datasets)
library(magrittr)
library(ggvis)
# Change the code below to plot the disp variable of mtcars on the x axis
mtcars %>% ggvis(~wt, ~mpg) %>% layer_points()
