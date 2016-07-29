library(ggplot2)
library(datasets)

# Draw a bar plot of cyl, filled according to am
ggplot(mtcars, aes(x=cyl, fill=am)) +
    geom_bar(position= "stack")


# Change the position argument to "dodge"
ggplot(mtcars, aes(x=cyl, fill=am)) +
    geom_bar(position= "dodge")

# Define posn_d with position_dodge()
posn_d <- position_dodge(0.2)

# Change the position argument to posn_d
ggplot(mtcars, aes(x=cyl, fill=am)) +
    geom_bar(position= posn_d)

# Use posn_d as position and adjust alpha to 0.6
ggplot(mtcars, aes(x=cyl, fill=am)) +
    geom_bar(position= posn_d, alpha=0.6)
