library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#Axes in ggvis
# Change the axes of the plot as instructed
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points() %>%
  add_axis("x", 
         title = "Time since previous eruption (m)", 
         values = c(50,60,70,80,90), 
         subdivide = 9,
         orient = "top") %>%
  add_axis("y", 
         title = "Duration of eruption (m)", 
         values = c(2,3,4,5), 
         subdivide = 9,
         orient = "right")
