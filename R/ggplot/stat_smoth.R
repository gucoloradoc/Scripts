library(ggplot2)
library(datasets)

# Plot 1: Jittered scatter plot, add a linear model (lm) smooth:
ggplot(Vocab, aes(x = education, y = vocabulary)) +
  geom_jitter(alpha = 0.2) + stat_smooth(method="lm", se=FALSE)

# Plot 2: Only lm, colored by year
ggplot(Vocab, aes(x = education, y = vocabulary, col= factor(year))) +
  stat_smooth(method= "lm", se=FALSE)

# Plot 3: Set a color brewer palette
ggplot(Vocab, aes(x = education, y = vocabulary, col= factor(year))) +
  stat_smooth(method= "lm", se=FALSE) +
  scale_color_brewer()

# Plot 4: Add the group, specify alpha and size
ggplot(Vocab, aes(x = education, y = vocabulary, col = year, group= factor(year))) +
  stat_smooth(method = "lm", se = F, alpha=0.6, size=2) +
  scale_color_gradientn(colors = brewer.pal(9,"YlOrRd"))
