# Load libraries ---------
library(ggplot2)
library(palmerpenguins)

# Make histogram of penguin bill depth --------
ggplot(penguins) +
  aes(x = bill_depth_mm) +
  geom_histogram() +
  labs(x = "Penguin bill depth (mm)")
