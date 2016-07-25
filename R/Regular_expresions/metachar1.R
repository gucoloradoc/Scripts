awards <- c("Won 1 Oscar.",
  "Won 1 Oscar. Another 9 wins & 24 nominations.",
  "1 win and 2 nominations.",
  "2 wins & 3 nominations.",
  "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
  "4 wins & 1 nomination.")
#The ([0-9]+)  The parentheses are used to make parts of the
#matching string available to define the replacement.
#The \\1 in the replacement argument of sub() gets set to the
#string that is captured by the regular expression [0-9]+.
  sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)
