library(datasets)
library(magrittr)
library(ggvis)

faithful %>%
    ggvis(~waiting) %>%
    layer_histograms(width= 5)
