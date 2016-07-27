library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)

# Add a layer of points to the graph below.
pressure %>%
  ggvis(~temperature, ~pressure, stroke := "skyblue") %>%
  layer_lines() %>%
  layer_points()

# Copy and adapt the solution to the first instruction below so that only the lines layer uses a skyblue stroke.
pressure %>%
  ggvis(~temperature, ~pressure) %>%
  layer_lines(stroke := "skyblue") %>%
  layer_points()
