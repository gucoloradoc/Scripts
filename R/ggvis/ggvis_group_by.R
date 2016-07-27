library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#ggvis and group_by()
mtcars %>%
  group_by(cyl) %>%
  ggvis(~mpg, ~wt, stroke = ~factor(cyl)) %>%
  layer_smooths()

# Instruction 2
mtcars %>% 
  group_by(cyl) %>%
  ggvis(~mpg, fill= ~factor(cyl)) %>%
  layer_densities()
