library(ggplot2)
library(datasets)

# Make a dot plot with ggplot
ggplot(mtcars, aes(cyl, wt, fill = factor(am))) +
    geom_dotplot( binaxis="y", stackdir="center")


# qplot with geom "dotplot", binaxis = "y" and stackdir = "center"
qplot(data= mtcars, x=cyl, y=wt, fill=factor(am), binaxis="y", stackdir="center",geom= "dotplot")
