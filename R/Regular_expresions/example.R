animals <- c("cat", "moose", "impala", "ant", "kiwi")
sub(pattern="a", replacement="o", x= animals)
gsub(pattern="a", replacement="o", x= animals)
gsub(pattern="a|i", replacement="_", x= animals)
