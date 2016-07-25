library(datasets)
library(magrittr)
library(ggvis)

# Change the code below to make a graph with red points
mtcars %>%
  ggvis(~wt, ~mpg, fill := "red") %>%
  layer_points()

# Change the code below draw smooths instead of points
mtcars %>%
  ggvis(~wt, ~mpg) %>%
  layer_smooths()

# Change the code below to make a graph containing both points and a smoothed summary line
mtcars %>%
  ggvis(~wt, ~mpg) %>%
  layer_points() %>%
  layer_smooths()
