library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
# Map the fill property to a select box that returns variable names
mtcars %>%
  ggvis(~mpg, ~wt,
    fill = input_select(
        label = "Choose fill variable:",
        choices = names(mtcars),
        map = as.name)) %>% #Command for take the strings returned as a function.
  layer_points()
