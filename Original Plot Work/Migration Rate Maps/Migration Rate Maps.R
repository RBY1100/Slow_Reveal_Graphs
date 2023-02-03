library(tidyverse)
library(usmap)
library(readxl)

#https://www.census.gov/content/dam/Census/library/publications/2007/dec/7_migration.pdf

us <- plot_usmap()
print(us)

alaskagy <- plot_usmap(
  regions = c("state"),
  include = c("Alaska"),
  color = "black",
  fill = "#c5c9cc") +
  theme(plot.background = element_rect(fill = "#e3f4fe"))

alaskagn <- plot_usmap(
  regions = c("state"),
  include = c("Alaska"),
  color = "black",
  fill = "#00867c") +
  theme(plot.background = element_rect(fill = "#e3f4fe"))

alaskao <- plot_usmap(
  regions = c("state"),
  include = c("Alaska"),
  color = "black",
  fill = "#ba7733") +
  theme(plot.background = element_rect(fill = "#e3f4fe"))




Hawaiigy <- plot_usmap(
  regions = c("state"),
  include = c("Hawaii"),
  color = "black",
  fill = "#c5c9cc") +
  theme(plot.background = element_rect(fill = "#e3f4fe"))

Hawaiit <- plot_usmap(
  regions = c("state"),
  include = c("Hawaii"),
  color = "black",
  fill = "#ffe0c1") +
  theme(plot.background = element_rect(fill = "#e3f4fe"))

Hawaiio <- plot_usmap(
  regions = c("state"),
  include = c("Hawaii"),
  color = "black",
  fill = "#ba7733") +
  theme(plot.background = element_rect(fill = "#e3f4fe"))




library(maps)
library(mapdata)



map <- map_data("state")
types <- read_xlsx(here::here("Original Plot Work", "Migration Rate Maps", "Migration 1935.xlsx"))

newmap <- map %>%
  inner_join(types, by = c("full" = "state")) %>%
  mutate(Type = coalesce(case_when(test == 1 ~ '30 to 108.6',
                                   test == 2 ~ '0.0 to 29.9',
                                   test == 3 ~ '-30.0 to -0.1',
                                   test == 4 ~ '-121.4 to -30.1',
  )))



plot_usmap(regions = c("state"), data = newmap, values="x")

ggplot(newmap, aes(x, y, group = test)) +
  geom_polygon(fill = "white", colour = "grey50") + 
  coord_quickmap()
