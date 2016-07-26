library(datasets)
library(magrittr)
library(ggvis)

# Rewrite the code with the pipe operator
faithful %>%
    ggvis( ~waiting, ~eruptions) %>%
    layer_points()

# Modify this graph to map the size property to the pressure variable
pressure %>%
  ggvis(~temperature, ~pressure, size= ~pressure) %>%
  layer_points()

# Modify this graph by setting the size property
pressure %>%
  ggvis(~temperature, ~pressure, size := 100) %>%
  layer_points()

# Fix this code to set the fill property to red
pressure %>%
  ggvis(~temperature, ~pressure, fill := "red") %>%
  layer_points()
