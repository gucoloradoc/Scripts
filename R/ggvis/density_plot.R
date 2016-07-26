library(datasets)
library(magrittr)
library(ggvis)
#Density plot
faithful %>%
    ggvis(~waiting) %>%
    layer_densities(fill:= "green")
