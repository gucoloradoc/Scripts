library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)
#Numeric input and slider
# Map the bindwidth to a numeric field ("Choose a binwidth:")
mtcars %>%
  ggvis(~mpg) %>%
  layer_histograms(width =
    input_numeric(
            label = "Choose a binwidth:",
            value = 1
            )
        )

# Map the binwidth to a slider bar ("Choose a binwidth:") with the correct specifications
mtcars %>%
  ggvis(~mpg) %>%
  layer_histograms(width =
        input_slider(1, 20,
        label = "Choose a binwidth:"
        )
    )
