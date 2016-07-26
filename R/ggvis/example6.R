library(datasets)
library(magrittr)
library(ggvis)
#Code for ggvis filling and syntax.
# Add code
faithful %>%
    ggvis(~waiting, ~eruptions, size = ~eruptions,
        opacity:= 0.5, fill := "blue",
        stroke:= "black") %>%
    layer_points()

# Add code
faithful %>%
    ggvis(~waiting, ~eruptions,
        size:= 100, fillOpacity = ~eruptions,
        fill:= "red", stroke:= "red", shape:= "cross") %>%
    layer_points()
