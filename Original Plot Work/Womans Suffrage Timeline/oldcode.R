library(tidyverse)
library(usmap)
library(readxl)
library(showtext)
library(magick)

#importing fonts
font_add_google(name = "Roboto", regular.wt = 300, family = "Main")

showtext_auto()

#First Map
map <- map_data("state")

picture <- image_graph(width = 950, height = 600)

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



picture <- image_graph(width = 950, height = 600)
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
img <- image_draw(picture)
text(305, 190, "Wyoming", cex = .75, family="Main", col = "#313131")
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

picture <- image_graph(width = 950, height = 600)

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
text(305, 190, "Wyoming", cex = .75, family="Main", col = "#313131")
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "4 Womans Suffrage Timeline.png"), format = "png")


#Fifth Map
img <- image_draw(picture)
text(245, 260, "Utah", cex = .75, family="Main", col = "#313131")
text(305, 190, "Wyoming", cex = .75, family="Main", col = "#313131")
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

picture <- image_graph(width = 950, height = 600)
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
text(245, 260, "Utah", cex = .75, family="Main", col = "#313131")
text(305, 190, "Wyoming", cex = .75, family="Main", col = "#313131")
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "6 Womans Suffrage Timeline.png"), format = "png")


#Seventh Map
img <- image_draw(picture)
text(120, 95, "Washington", cex = .75, family="Main", col = "#313131")
text(245, 260, "Utah", cex = .75, family="Main", col = "#313131")
text(305, 190, "Wyoming", cex = .75, family="Main", col = "#313131")
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

picture <- image_graph(width = 950, height = 600)

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
text(120, 95, "Washington", cex = .75, family="Main", col = "#313131")
text(115, 170, "Oregon", cex = .75, family="Main", col = "#313131")
text(115, 300, "California", cex = .75, family="Main", col = "#313131")
text(210, 170, "Idaho", cex = .75, family="Main", col = "#313131")
text(170, 265, "Nevada", cex = .75, family="Main", col = "#313131")
text(245, 375, "Arizona", cex = .75, family="Main", col = "#313131")
text(245, 260, "Utah", cex = .75, family="Main", col = "#313131")
text(275, 105, "Montana", cex = .75, family="Main", col = "#313131")
text(305, 190, "Wyoming", cex = .75, family="Main", col = "#313131")
text(335, 270, "Colorado", cex = .75, family="Main", col = "#313131")
text(325, 365, "New Mexico", cex = .75, family="Main", col = "#313131")
text(410, 95, "North Dakota", cex = .75, family="Main", col = "#313131")
text(410, 160, "South Dakota", cex = .75, family="Main", col = "#313131")
text(415, 220, "Nebraska", cex = .75, family="Main", col = "#313131")
text(440, 285, "Kansas", cex = .75, family="Main", col = "#313131")
text(455, 345, "Oklahoma", cex = .75, family="Main", col = "#313131")
text(425, 430, "Texas", cex = .75, family="Main", col = "#313131")
text(495, 125, "Minnesota", cex = .75, family="Main", col = "#313131")
text(510, 210, "Iowa", cex = .75, family="Main", col = "#313131")
text(525, 285, "Missouri", cex = .75, family="Main", col = "#313131")
text(525, 360, "Arkansas", cex = .75, family="Main", col = "#313131")
text(530, 445, "Louisiana", cex = .75, family="Main", col = "#313131")
text(560, 155, "Wisconsin", cex = .75, family="Main", col = "#313131")
text(570, 248, "Illinois", cex = .75, family="Main", col = "#313131")
text(640, 185, "Michigan", cex = .75, family="Main", col = "#313131")
text(617, 250, "Indiana", cex = .75, family="Main", col = "#313131")
text(668, 245, "Ohio", cex = .75, family="Main", col = "#313131")
text(740, 235, "Pennsylvania", cex = .75, family="Main", col = "#313131")
text(775, 190, "New York", cex = .75, family="Main", col = "#313131")
text(814, 166, "VT", cex = .75, family="Main", col = "#313131")
text(830, 175, "NH", cex = .75, family="Main", col = "#313131")
text(865, 140, "Maine", cex = .75, family="Main", col = "#313131")
text(825, 203, "MASS", cex = .75, family="Main", col = "#313131")
text(815, 218, "CT", cex = .75, family="Main", col = "#313131")
text(789, 247, "NJ", cex = .75, family="Main", col = "#313131")
text(750, 265, "MD", cex = .75, family="Main", col = "#313131")
text(700, 272, "West", cex = .75, family="Main", col = "#313131")
text(700, 280, "Virginia", cex = .75, family="Main", col = "#313131")
text(725, 300, "Virginia", cex = .75, family="Main", col = "#313131")
text(630, 305, "Kentucky", cex = .75, family="Main", col = "#313131")
text(615, 340, "Tennessee", cex = .75, family="Main", col = "#313131")
text(720, 338, "North", cex = .75, family="Main", col = "#313131")
text(720, 345, "Carolina", cex = .75, family="Main", col = "#313131")
text(695, 375, "South", cex = .75, family="Main", col = "#313131")
text(695, 382, "Carolina", cex = .75, family="Main", col = "#313131")
text(565, 400, "Mississippi", cex = .75, family="Main", col = "#313131")
text(610, 400, "Alabama", cex = .75, family="Main", col = "#313131")
text(660, 405, "Georgia", cex = .75, family="Main", col = "#313131")
text(672, 465, "Florida", cex = .75, family="Main", col = "#313131")
dev.off()

image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "8 Womans Suffrage Timeline.png"), format = "png")