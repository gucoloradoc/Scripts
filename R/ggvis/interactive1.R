library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#Interactive Graphics
# Adapt the code: set fill with a select box
faithful %>%
  ggvis(~waiting, ~eruptions, fillOpacity := 0.5,
        shape := input_select(label = "Choose shape:",
                              choices = c("circle", "square", "cross",
                                          "diamond", "triangle-up", "triangle-down")),
        fill := input_select(label ="Choose color:",
                            choices= c("black", "red", "blue", "green"))) %>%
  layer_points()

# Add radio buttons to control the fill of the plot
mtcars %>%
  ggvis(~mpg, ~wt,
        fill := input_radiobuttons(label = "Choose color:",
                                    choices = c("black", "red", "blue",
                                    "green"))) %>%
  layer_points()
