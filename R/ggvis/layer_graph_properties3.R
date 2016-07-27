library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#correct errors.
pressure %>%
  ggvis(~temperature, ~pressure, stroke := "darkred") %>%
  layer_lines(stroke := "orange", strokeDash := 5, strokeWidth := 5) %>%
  layer_points(size := 100, fill := "lightgreen", shape := "circle") %>%
  layer_smooths()
