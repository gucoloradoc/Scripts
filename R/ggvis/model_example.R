library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)

# Add more layers to the line plot
pressure %>%
  ggvis(~temperature, ~pressure) %>%
  layer_lines(opacity := 0.5) %>%
  layer_points() %>%
  layer_model_predictions(model = "lm",
    stroke := "navy") %>%
  layer_smooths(stroke := "skyblue")
