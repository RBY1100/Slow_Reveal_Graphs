library(tidyverse)
library(usmap)

#https://www.census.gov/content/dam/Census/library/publications/2007/dec/7_migration.pdf

test <- plot_usmap(
  regions = c("state"),
  include = c("Alaska"),
  color = "red",
  fill = "blue") +
  theme(plot.background = element_rect(fill = "#f1d9b5"))

print(test)