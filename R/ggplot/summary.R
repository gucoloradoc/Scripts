library(ggplot2)
library(datasets)

# ChickWeight is available in your workspace

# Check out the head of ChickWeight
head(ChickWeight)

# Use ggplot() for the second instruction
ggplot(ChickWeight, aes(x= Time, y= weight))+
    geom_line(aes(group=Chick))


# Use ggplot() for the third instruction
ggplot(ChickWeight, aes(x= Time, y= weight, col= Diet))+
    geom_line(aes(group=Chick))

# Use ggplot() for the last instruction
ggplot(ChickWeight, aes(x= Time, y= weight, col= Diet))+
    geom_line(aes(group=Chick), alpha= 0.3) +
    geom_smooth(lwd=2, se=FALSE)
