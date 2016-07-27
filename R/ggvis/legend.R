library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#Legends
# Add a legend
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions))) %>% 
  layer_points() %>%
  add_legend("fill", title = "~ duration (m)", orient= "left")
