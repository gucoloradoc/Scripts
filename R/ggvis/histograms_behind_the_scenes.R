library(datasets)
library(magrittr)
library(ggvis)

# Finish the command
faithful %>%
  compute_bin(~waiting, width= 5) %>%
  ggvis(x = ~xmin_, x2 = ~xmax_, y = 0, y2 = ~count_) %>%
  layer_rects()
