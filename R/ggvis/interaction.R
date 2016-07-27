library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#group_by vs interaction
mtcars %>%
    group_by(cyl, am) %>%
    ggvis(~mpg, fill = ~interaction(cyl,am)) %>%
    layer_densities()
