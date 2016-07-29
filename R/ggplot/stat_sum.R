library(ggplot2)
library(datasets)

# Plot with linear and loess model
p <- ggplot(Vocab, aes(x = education, y = vocabulary)) +
       stat_smooth(method = "loess", aes(col = "red"), se = F) +
       stat_smooth(method = "lm", aes(col = "blue"), se = F) +
       scale_color_discrete("Model", labels = c("red" = "LOESS", "blue" = "lm"))

# Add stat_sum
p <- p + stat_sum()

# Add stat_sum and set size range
p <- p+ scale_size(range=c(1,10))
