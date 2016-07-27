library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#Opacity scale
# Add a scale to limit the range of opacity 
mtcars %>% ggvis(x = ~wt, y = ~mpg, fill = ~factor(cyl), opacity = ~hp) %>%
  layer_points() %>%
  scale_numeric("opacity", range=c(0.2,1))
