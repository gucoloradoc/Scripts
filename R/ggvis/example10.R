library(datasets)
library(magrittr)
library(ggvis)
##Models in ggvis
# Extend with ggvis() and layer_lines()
mtcars %>%
    compute_smooth(mpg ~ wt) %>%
    ggvis(~pred_, ~resp_) %>%
    layer_lines()

# Extend with layer_points() and layer_smooths()
mtcars %>%
    ggvis(~wt, ~mpg) %>%
    layer_points() %>%
    layer_smooths()
