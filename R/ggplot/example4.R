library(ggplot2)
library(datasets)

# Map mpg onto x, qsec onto y and factor(cyl) onto col
ggplot(mtcars, aes(x= mpg, y=qsec, col= factor(cyl))) +
    geom_point()


# Add mapping: factor(am) onto shape
ggplot(mtcars, aes(x= mpg, y=qsec, col= factor(cyl), shape= factor(am))) +
    geom_point()


# Add mapping: (hp/wt) onto size
ggplot(mtcars, aes(x= mpg, y=qsec, 
                    col= factor(cyl), shape= factor(am), 
                    size= (hp/wt))) +
    geom_point()
