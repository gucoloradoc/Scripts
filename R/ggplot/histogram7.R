library(ggplot2)
library(datasets)

# Basic histogram plot command
ggplot(mtcars, aes(mpg)) +
  geom_histogram(binwidth = 1)

# Expand the histogram to fill using am
ggplot(mtcars, aes(x=mpg, fill=am)) +
  geom_histogram(binwidth = 1, aes(fill= am))


# Change the position argument to "dodge"
ggplot(mtcars, aes(x=mpg, fill=am)) +
  geom_histogram(binwidth = 1, aes(fill= am),
  position="dodge")

# Change the position argument to "fill"
ggplot(mtcars, aes(x=mpg, fill=am)) +
  geom_histogram(binwidth = 1,
  position="fill")
# Change the position argument to "identity" and set alpha to 0.4
ggplot(mtcars, aes(x=mpg, fill=am)) +
  geom_histogram(binwidth = 1, aes(fill= am),
  position="identity", alpha=0.4)
# Change fill to cyl
ggplot(mtcars, aes(x=mpg, fill=cyl)) +
  geom_histogram(binwidth = 1,
  position="identity", alpha=0.4)
