library(datasets)
library(magrittr)
library(ggvis)
#Model fitting  with ggvis.
# Compute the x and y coordinates for a loess smooth line that predicts mpg with the wt
mtcars %>%
  compute_smooth(mpg ~ wt) %>%
  ggvis(~pred_,~resp_) %>%
  layer_lines()
