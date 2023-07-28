library(ggplot2)
library(palmerpenguins)

ggplot(penguins) +
  aes(x = bill_depth_mm) +
  geom_histogram() +
  labs(x = "Penguin bill depth (mm)")
