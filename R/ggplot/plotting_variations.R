library(ggplot2)
library(datasets)

# Display structure of mtcars
str(mtcars)

# Convert cyl and am to factors:
mtcars$cyl <- factor(mtcars$cyl)
mtcars$am <- factor(mtcars$am)

# Define positions:
posn.d <- position_dodge(0.1)
posn.jd <- position_jitterdodge(jitter.width=0.1, dodge.width=0.2)
posn.j <- position_jitter(0.2)

# base layers:
wt.cyl.am <- ggplot(mtcars, aes(x= cyl, y= wt, fill= am, col= am, group= am))

wt.cyl.am +
  geom_point(position = posn.jd, alpha = 0.6)

# Plot 2: Mean and SD - the easy way
wt.cyl.am + stat_summary(fun.data= mean_sdl, fun.args= list(mult = 1),
                        position= posn.d)

  
# Plot 3: Mean and 95% CI - the easy way
wt.cyl.am + stat_summary(fun.data= mean_sdl, fun.args= list(mult = 1),
                        position= posn.d)

  
# Plot 4: Mean and SD - with T-tipped error bars - fill in ___
wt.cyl.am +
  stat_summary(geom = "point", fun.y = mean, 
               position = posn.d) +
  stat_summary(geom = "errorbar", fun.data = mean_sdl, 
               position = posn.d, fun.args = list(mult = 1), width = 0.1)
