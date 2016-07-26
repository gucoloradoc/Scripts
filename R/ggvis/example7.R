library(datasets)
library(magrittr)
library(ggvis)
#Lines examples
# Update the code
pressure %>%
    ggvis(~temperature, ~pressure) %>%
    layer_lines(strokeWidth := 6, strokeDash:= 4,
        stroke :="red")
