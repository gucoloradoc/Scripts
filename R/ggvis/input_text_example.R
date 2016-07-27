library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#input_text
mtcars %>%
  ggvis(~mpg, ~wt,
        fill := input_text(label = "Choose color:",
                                   value = "black")) %>%
  layer_points()
