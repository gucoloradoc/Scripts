library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#Legends
# Fix the legend
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions)), shape = ~factor(round(eruptions)), 
        size = ~round(eruptions))  %>%
  layer_points() %>%
  add_legend(c("fill", "shape", "size"),
            title = "~ duration (m)")
