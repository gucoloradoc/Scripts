library(datasets)
library(magrittr)
library(ggvis)

iris %>%
  ggvis(x=~Sepal.Width,
    y=~Sepal.Length,
    fill=~Species,
    size=~Petal.Width
    ) %>%
  layer_points()
