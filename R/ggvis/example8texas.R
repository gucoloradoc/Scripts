library(datasets)
library(magrittr)
library(ggvis)
#Paths example with the texas coordinates in the texas_raw.txt file.
# Update the plot
texas %>%
    ggvis(~long,
        ~lat, fill := "darkorange") %>%
    layer_paths()
