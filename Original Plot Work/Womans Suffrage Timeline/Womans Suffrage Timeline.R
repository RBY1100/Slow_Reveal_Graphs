library(tidyverse)
library(usmap)
library(readxl)
library(showtext)
library(maps)
library(mapdata)
library(ggpubr)
library(magick)
library(grid)

#importing fonts
font_add_google(name = "Encode Sans", family = "Main")
font_add_google(name = "Bree Serif", family = "alt")

showtext_auto()

#First Map
map <- map_data("state")

picture <- image_graph(width = 900, height = 600)

ggplot(data = map) + 
  geom_polygon(aes(x=long, y=lat, group=group),
               fill= "#ededed",
               color="#b4b4b4",
               size = .5) +
  theme(legend.position = "none",
        legend.title = element_blank()) +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#c1d2d2"),
        plot.title = element_text(size = 20, hjust = .5, family = "Title"),
        plot.margin = margin(30,10,10,10),
        plot.background = element_rect(fill = "#c1d2d2"))

dev.off()


img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "1 Womans Suffrage Timeline.png"), format = "png")




#Second Map
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "data1.xlsx"))
types1$state <- tolower(types1$state)

map1 <- map %>%
  inner_join(types1, by = c("region" = "state")) %>%
  mutate(Type = coalesce(case_when(test == 1 ~ '30 to 108.6',
                                   test == 2 ~ '0.0 to 29.9'
  )))
map1$Type <- factor(map1$Type, levels=c("30 to 108.6", "0.0 to 29.9", "-30.0 to -0.1", "-121.4 to -30.1"))



picture <- image_graph(width = 900, height = 600)

ggplot(data = map1) + 
  geom_polygon(aes(x=long, y=lat, group=group, 
                   fill = Type),
               color="#b4b4b4",
               size = .5) +
  theme(legend.position = "none",
        legend.title = element_blank()) +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#c1d2d2"),
        plot.title = element_text(size = 20, hjust = .5, family = "Title"),
        plot.margin = margin(30,10,10,10),
        plot.background = element_rect(fill = "#c1d2d2")) +
  scale_fill_manual(values = c("#ededed","#6d8fb4")) 

dev.off()


img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "2 Womans Suffrage Timeline.png"), format = "png")








#Third Map
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "data1.xlsx"))
types1$state <- tolower(types1$state)

map1 <- map %>%
  inner_join(types1, by = c("region" = "state")) %>%
  mutate(Type = coalesce(case_when(test == 1 ~ '30 to 108.6',
                                   test == 2 ~ '0.0 to 29.9'
  )))
map1$Type <- factor(map1$Type, levels=c("30 to 108.6", "0.0 to 29.9", "-30.0 to -0.1", "-121.4 to -30.1"))



picture <- image_graph(width = 900, height = 600)

ggplot(data = map1) + 
  geom_polygon(aes(x=long, y=lat, group=group, 
                   fill = Type),
               color="#b4b4b4",
               size = .5) +
  theme(legend.position = "none",
        legend.title = element_blank()) +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#c1d2d2"),
        plot.title = element_text(size = 20, hjust = .5, family = "Title"),
        plot.margin = margin(30,10,10,10),
        plot.background = element_rect(fill = "#c1d2d2")) +
  scale_fill_manual(values = c("#ededed","#6d8fb4")) 

dev.off()


img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "3 Womans Suffrage Timeline.png"), format = "png")










#Fourth Map
map <- map_data("state")
types2 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "data2.xlsx"))
types2$state <- tolower(types2$state)

map2 <- map %>%
  inner_join(types2, by = c("region" = "state")) %>%
  mutate(Type = coalesce(case_when(test == 1 ~ '30 to 108.6',
                                   test == 2 ~ '0.0 to 29.9'
  )))
map1$Type <- factor(map1$Type, levels=c("30 to 108.6", "0.0 to 29.9", "-30.0 to -0.1", "-121.4 to -30.1"))



picture <- image_graph(width = 900, height = 600)

ggplot(data = map2) + 
  geom_polygon(aes(x=long, y=lat, group=group, 
                   fill = Type),
               color="#b4b4b4",
               size = .5) +
  theme(legend.position = "none",
        legend.title = element_blank()) +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#c1d2d2"),
        plot.title = element_text(size = 20, hjust = .5, family = "Title"),
        plot.margin = margin(30,10,10,10),
        plot.background = element_rect(fill = "#c1d2d2")) +
  scale_fill_manual(values = c("#6d8fb4","#ededed")) 

dev.off()


img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "4 Womans Suffrage Timeline.png"), format = "png")









#Fifth Map
map <- map_data("state")
types2 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "data2.xlsx"))
types2$state <- tolower(types2$state)

map2 <- map %>%
  inner_join(types2, by = c("region" = "state")) %>%
  mutate(Type = coalesce(case_when(test == 1 ~ '30 to 108.6',
                                   test == 2 ~ '0.0 to 29.9'
  )))
map1$Type <- factor(map1$Type, levels=c("30 to 108.6", "0.0 to 29.9", "-30.0 to -0.1", "-121.4 to -30.1"))



picture <- image_graph(width = 900, height = 600)

ggplot(data = map2) + 
  geom_polygon(aes(x=long, y=lat, group=group, 
                   fill = Type),
               color="#b4b4b4",
               size = .5) +
  theme(legend.position = "none",
        legend.title = element_blank()) +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#c1d2d2"),
        plot.title = element_text(size = 20, hjust = .5, family = "Title"),
        plot.margin = margin(30,10,10,10),
        plot.background = element_rect(fill = "#c1d2d2")) +
  scale_fill_manual(values = c("#6d8fb4","#ededed")) 

dev.off()


img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "5 Womans Suffrage Timeline.png"), format = "png")







#Sixth Map
map <- map_data("state")
types3 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "data3.xlsx"))
types3$state <- tolower(types3$state)

map3 <- map %>%
  inner_join(types3, by = c("region" = "state")) %>%
  mutate(Type = coalesce(case_when(test == 1 ~ '30 to 108.6',
                                   test == 2 ~ '0.0 to 29.9'
  )))
map3$Type <- factor(map3$Type, levels=c("30 to 108.6", "0.0 to 29.9", "-30.0 to -0.1", "-121.4 to -30.1"))



picture <- image_graph(width = 900, height = 600)

ggplot(data = map3) + 
  geom_polygon(aes(x=long, y=lat, group=group, 
                   fill = Type),
               color="#b4b4b4",
               size = .5) +
  theme(legend.position = "none",
        legend.title = element_blank()) +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#c1d2d2"),
        plot.title = element_text(size = 20, hjust = .5, family = "Title"),
        plot.margin = margin(30,10,10,10),
        plot.background = element_rect(fill = "#c1d2d2")) +
  scale_fill_manual(values = c("#ededed","#6d8fb4"))

dev.off()


img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "6 Womans Suffrage Timeline.png"), format = "png")








#Seventh Map
map <- map_data("state")
types3 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "data3.xlsx"))
types3$state <- tolower(types3$state)

map3 <- map %>%
  inner_join(types3, by = c("region" = "state")) %>%
  mutate(Type = coalesce(case_when(test == 1 ~ '30 to 108.6',
                                   test == 2 ~ '0.0 to 29.9'
  )))
map3$Type <- factor(map3$Type, levels=c("30 to 108.6", "0.0 to 29.9", "-30.0 to -0.1", "-121.4 to -30.1"))



picture <- image_graph(width = 900, height = 600)

ggplot(data = map3) + 
  geom_polygon(aes(x=long, y=lat, group=group, 
                   fill = Type),
               color="#b4b4b4",
               size = .5) +
  theme(legend.position = "none",
        legend.title = element_blank()) +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#c1d2d2"),
        plot.title = element_text(size = 20, hjust = .5, family = "Title"),
        plot.margin = margin(30,10,10,10),
        plot.background = element_rect(fill = "#c1d2d2")) +
  scale_fill_manual(values = c("#ededed","#6d8fb4"))

dev.off()


img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "7 Womans Suffrage Timeline.png"), format = "png")







#Eighth Map
map <- map_data("state")
types3 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "data3.xlsx"))
types3$state <- tolower(types3$state)

map3 <- map %>%
  inner_join(types3, by = c("region" = "state")) %>%
  mutate(Type = coalesce(case_when(test == 1 ~ '30 to 108.6',
                                   test == 2 ~ '0.0 to 29.9'
  )))
map3$Type <- factor(map3$Type, levels=c("30 to 108.6", "0.0 to 29.9", "-30.0 to -0.1", "-121.4 to -30.1"))



picture <- image_graph(width = 900, height = 600)

ggplot(data = map3) + 
  geom_polygon(aes(x=long, y=lat, group=group, 
                   fill = Type),
               color="black",
               size = .5) +
  theme(legend.position = "none",
        legend.title = element_blank()) +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#c1d2d2"),
        plot.title = element_text(size = 20, hjust = .5, family = "Title"),
        plot.margin = margin(30,10,10,10),
        plot.background = element_rect(fill = "#c1d2d2")) +
  scale_fill_manual(values = c("#ededed","#6d8fb4"))

dev.off()


img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "8 Womans Suffrage Timeline.png"), format = "png")