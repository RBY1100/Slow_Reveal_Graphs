library(tidyverse)
library(leaflet)
library(maps)
library(mapdata)
library(mapview)
library(readxl)
library(magick)

#
# FILE:
# Womans Suffrage Timeline.R
#
# DESCRIPTION:
# This code is for the Population of Europe graph by Du Bois. The png shows the final recreated graph.  
# Source: https://blogs.scientificamerican.com/sa-visual/w-e-b-du-bois-scientific-american-and-data-stories-of-the-early-1900s/
#
# SLOW REVEAL ORDER:
#   
# 1-27: Changing States to Blue w/ Names
#
# AUTHORS:
#   Robert Bilyk
#

mapStates <- map("state", fill = TRUE, plot = FALSE)


#Graph 1
leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor="#ededed", color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "1 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)


#Graph 2
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data1.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)
 
mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "2 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)


#Graph 3
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data1.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "3 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "3 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "3 Womans Suffrage Timeline.png"), format = "png")


#Graph 4
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data2.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "4 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "4 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "4 Womans Suffrage Timeline.png"), format = "png")


#Graph 5
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data2.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "5 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "5 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "5 Womans Suffrage Timeline.png"), format = "png")


#Graph 6
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data3.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "6 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "6 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "6 Womans Suffrage Timeline.png"), format = "png")


#Graph 7
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data3.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "7 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "7 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "7 Womans Suffrage Timeline.png"), format = "png")


#Graph 8
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data4.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "8 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "8 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "8 Womans Suffrage Timeline.png"), format = "png")


#Graph 9
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data5.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "9 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "9 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "9 Womans Suffrage Timeline.png"), format = "png")


#Graph 10
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data5.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "10 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "10 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "10 Womans Suffrage Timeline.png"), format = "png")


#Graph 11
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data6.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "11 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "11 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "11 Womans Suffrage Timeline.png"), format = "png")


#Graph 12
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data6.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "12 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "12 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "12 Womans Suffrage Timeline.png"), format = "png")


#Graph 13
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data7.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "13 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "13 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "13 Womans Suffrage Timeline.png"), format = "png")


#Graph 14
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data8.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "14 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "14 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "14 Womans Suffrage Timeline.png"), format = "png")


#Graph 15
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data8.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "15 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "15 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "15 Womans Suffrage Timeline.png"), format = "png")


#Graph 16
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data9.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "16 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "16 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "16 Womans Suffrage Timeline.png"), format = "png")


#Graph 17
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data9.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "17 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "17 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "17 Womans Suffrage Timeline.png"), format = "png")


#Graph 18
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data10.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "18 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "18 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "18 Womans Suffrage Timeline.png"), format = "png")


#Graph 19
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data10.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "19 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "19 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "19 Womans Suffrage Timeline.png"), format = "png")


#Graph 20
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data11.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "20 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "20 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "20 Womans Suffrage Timeline.png"), format = "png")


#Graph 21
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data11.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "21 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "21 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(595, 135, "North Dakota", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
text(1165, 280, "New York", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "21 Womans Suffrage Timeline.png"), format = "png")


#Graph 22
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data12.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "22 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "22 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(595, 135, "North Dakota", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
text(1165, 280, "New York", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "22 Womans Suffrage Timeline.png"), format = "png")


#Graph 23
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data12.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "23 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "23 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(595, 135, "North Dakota", cex = 1, family="Main", col = "#313131")
text(600, 235, "South Dakota", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
text(670, 500, "Oklahoma", cex = 1, family="Main", col = "#313131")
text(780, 520, "Arkansas", cex = 1, family="Main", col = "#313131")
text(790, 630, "Louisiana", cex = 1, family="Main", col = "#313131")
text(958, 275, "Michigan", cex = 1, family="Main", col = "#313131")
text(1165, 280, "New York", cex = 1, family="Main", col = "#313131")

dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "23 Womans Suffrage Timeline.png"), format = "png")


#Graph 24
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data13.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "24 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "24 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(595, 135, "North Dakota", cex = 1, family="Main", col = "#313131")
text(600, 235, "South Dakota", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
text(670, 500, "Oklahoma", cex = 1, family="Main", col = "#313131")
text(780, 520, "Arkansas", cex = 1, family="Main", col = "#313131")
text(790, 630, "Louisiana", cex = 1, family="Main", col = "#313131")
text(958, 275, "Michigan", cex = 1, family="Main", col = "#313131")
text(1165, 280, "New York", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "24 Womans Suffrage Timeline.png"), format = "png")


#Graph 25
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data13.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "25 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "25 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(595, 135, "North Dakota", cex = 1, family="Main", col = "#313131")
text(600, 235, "South Dakota", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
text(670, 500, "Oklahoma", cex = 1, family="Main", col = "#313131")
text(780, 520, "Arkansas", cex = 1, family="Main", col = "#313131")
text(790, 630, "Louisiana", cex = 1, family="Main", col = "#313131")
text(958, 275, "Michigan", cex = 1, family="Main", col = "#313131")
text(1165, 280, "New York", cex = 1, family="Main", col = "#313131")
text(760, 310, "Iowa", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "25 Womans Suffrage Timeline.png"), format = "png")


#Graph 26
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data14.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "26 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "26 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(595, 135, "North Dakota", cex = 1, family="Main", col = "#313131")
text(600, 235, "South Dakota", cex = 1, family="Main", col = "#313131")
text(610, 325, "Nebraska", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
text(670, 500, "Oklahoma", cex = 1, family="Main", col = "#313131")
text(760, 310, "Iowa", cex = 1, family="Main", col = "#313131")
text(780, 520, "Arkansas", cex = 1, family="Main", col = "#313131")
text(790, 630, "Louisiana", cex = 1, family="Main", col = "#313131")
text(958, 275, "Michigan", cex = 1, family="Main", col = "#313131")
text(1165, 280, "New York", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "26 Womans Suffrage Timeline.png"), format = "png")


#Graph 27
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data14.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "27 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "27 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(135, 255, "Oregon", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(225, 390, "Nevada", cex = 1, family="Main", col = "#313131")
text(340, 535, "Arizona", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(385, 145, "Montana", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
text(470, 525, "New Mexico", cex = 1, family="Main", col = "#313131")
text(595, 135, "North Dakota", cex = 1, family="Main", col = "#313131")
text(600, 235, "South Dakota", cex = 1, family="Main", col = "#313131")
text(610, 325, "Nebraska", cex = 1, family="Main", col = "#313131")
text(645, 415, "Kansas", cex = 1, family="Main", col = "#313131")
text(670, 500, "Oklahoma", cex = 1, family="Main", col = "#313131")
text(620, 610, "Texas", cex = 1, family="Main", col = "#313131")
text(735, 175, "Minnesota", cex = 1, family="Main", col = "#313131")
text(760, 310, "Iowa", cex = 1, family="Main", col = "#313131")
text(780, 415, "Missouri", cex = 1, family="Main", col = "#313131")
text(780, 520, "Arkansas", cex = 1, family="Main", col = "#313131")
text(790, 630, "Louisiana", cex = 1, family="Main", col = "#313131")
text(835, 230, "Wisconsin", cex = 1, family="Main", col = "#313131")
text(850, 365, "Illinois", cex = 1, family="Main", col = "#313131")
text(958, 275, "Michigan", cex = 1, family="Main", col = "#313131")
text(920, 370, "Indiana", cex = 1, family="Main", col = "#313131")
text(1005, 365, "Ohio", cex = 1, family="Main", col = "#313131")
text(1110, 345, "Pennsylvania", cex = 1, family="Main", col = "#313131")
text(1165, 280, "New York", cex = 1, family="Main", col = "#313131")
text(1230, 245, "VT", cex = 1, family="Main", col = "#313131")
text(1255, 265, "NH", cex = 1, family="Main", col = "#313131")
text(1310, 205, "Maine", cex = 1, family="Main", col = "#313131")
text(1245, 300, "MASS", cex = 1, family="Main", col = "#313131")
text(1230, 320, "CT", cex = 1, family="Main", col = "#313131")
text(1190, 365, "NJ", cex = 1, family="Main", col = "#313131")
text(1140, 390, "MD", cex = 1, family="Main", col = "#313131")
text(1050, 402, "West", cex = 1, family="Main", col = "#313131")
text(1050, 410, "Virginia", cex = 1, family="Main", col = "#313131")
text(1090, 440, "Virginia", cex = 1, family="Main", col = "#313131")
text(950, 440, "Kentucky", cex = 1, family="Main", col = "#313131")
text(920, 490, "Tennessee", cex = 1, family="Main", col = "#313131")
text(1085, 490, "North", cex = 1, family="Main", col = "#313131")
text(1085, 498, "Carolina", cex = 1, family="Main", col = "#313131")
text(1045, 540, "South", cex = 1, family="Main", col = "#313131")
text(1045, 548, "Carolina", cex = 1, family="Main", col = "#313131")
text(845, 570, "Mississippi", cex = 1, family="Main", col = "#313131")
text(910, 570, "Alabama", cex = 1, family="Main", col = "#313131")
text(985, 575, "Georgia", cex = 1, family="Main", col = "#313131")
text(1005, 650, "Florida", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "27 Womans Suffrage Timeline.png"), format = "png")








#Graph 8a
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data4a.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "8a Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "8a Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "8a Womans Suffrage Timeline.png"), format = "png")


#Graph 9a
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data5a.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "9a Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "9a Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "Final Images", "9a Womans Suffrage Timeline.png"), format = "png")
