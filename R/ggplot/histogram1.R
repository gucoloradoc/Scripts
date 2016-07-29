library(ggplot2)
library(datasets)

# Make a univariate histogram
ggplot(mtcars, aes(x=mpg)) +
    geom_histogram()


# Change the bin width to 1
ggplot(mtcars, aes(x=mpg)) +
    geom_histogram(binwidth=1)


# Change the y aesthetic to density
ggplot(mtcars, aes(x=mpg)) +
    geom_histogram(aes(y=..density..),binwidth=1)


# Custom color code
myBlue <- "#377EB8"

# Change the fill color to myBlue
ggplot(mtcars, aes(x=mpg)) +
    geom_histogram(aes(y=..density..),binwidth=1, fill= myBlue)
