library(tidyverse)
library(leaflet)
library(maps)
library(mapdata)
library(mapview)
library(readxl)
library(magick)

mapStates <- map("state", fill = TRUE, plot = FALSE)


#Graph 1
leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor="#ededed", color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "1 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "2 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "3 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "3 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "3 Womans Suffrage Timeline.png"), format = "png")


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "4 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "4 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "4 Womans Suffrage Timeline.png"), format = "png")


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "5 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "5 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "5 Womans Suffrage Timeline.png"), format = "png")


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "6 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "6 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "6 Womans Suffrage Timeline.png"), format = "png")


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "7 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "7 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "7 Womans Suffrage Timeline.png"), format = "png")


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "8 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "8 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "8 Womans Suffrage Timeline.png"), format = "png")


#Graph 9
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data4.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "9 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "9 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "9 Womans Suffrage Timeline.png"), format = "png")


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "10 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "10 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "10 Womans Suffrage Timeline.png"), format = "png")


#Graph 11
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data5.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "11 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "11 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "11 Womans Suffrage Timeline.png"), format = "png")


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


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "12 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "12 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "12 Womans Suffrage Timeline.png"), format = "png")


#Graph 13
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data6.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "13 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "13 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "13 Womans Suffrage Timeline.png"), format = "png")


#Graph 14
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data7.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "14 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "14 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "14 Womans Suffrage Timeline.png"), format = "png")


#Graph 15
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data7.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "15 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "15 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "15 Womans Suffrage Timeline.png"), format = "png")


#Graph 16
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data8.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "16 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "16 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "16 Womans Suffrage Timeline.png"), format = "png")


#Graph 17
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data8.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "17 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "17 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "17 Womans Suffrage Timeline.png"), format = "png")


#Graph 18
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data9.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "18 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "18 Womans Suffrage Timeline.png"))

img <- image_draw(original)
text(140, 140, "Washington", cex = 1, family="Main", col = "#313131")
text(140, 440, "California", cex = 1, family="Main", col = "#313131")
text(280, 255, "Idaho", cex = 1, family="Main", col = "#313131")
text(345, 395, "Utah", cex = 1, family="Main", col = "#313131")
text(435, 280, "Wyoming", cex = 1, family="Main", col = "#313131")
text(480, 400, "Colorado", cex = 1, family="Main", col = "#313131")
dev.off()
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "18 Womans Suffrage Timeline.png"), format = "png")


#Graph 19
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data9.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "19 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "19 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "19 Womans Suffrage Timeline.png"), format = "png")


#Graph 20
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data10.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "20 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "20 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "20 Womans Suffrage Timeline.png"), format = "png")


#Graph 21
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data10.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "21 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "21 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "21 Womans Suffrage Timeline.png"), format = "png")


#Graph 22
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data11.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "22 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "22 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "22 Womans Suffrage Timeline.png"), format = "png")


#Graph 23
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data11.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "23 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "23 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "23 Womans Suffrage Timeline.png"), format = "png")


#Graph 24
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data12.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "24 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "24 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "24 Womans Suffrage Timeline.png"), format = "png")


#Graph 25
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data12.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "25 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "25 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "25 Womans Suffrage Timeline.png"), format = "png")


#Graph 26
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data13.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "26 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "26 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "26 Womans Suffrage Timeline.png"), format = "png")


#Graph 27
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data13.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "27 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "27 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "27 Womans Suffrage Timeline.png"), format = "png")


#Graph 28
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data14.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "28 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "28 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "28 Womans Suffrage Timeline.png"), format = "png")


#Graph 29
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data14.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -96, lat = 39, zoom = 5) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "29 Womans Suffrage Timeline.png"), vwidth = 1400, vheight = 800)

original <- image_read(here::here("Original Plot Work", "Womans Suffrage Timeline", "29 Womans Suffrage Timeline.png"))

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
image_write(img, path = here::here("Original Plot Work", "Womans Suffrage Timeline", "29 Womans Suffrage Timeline.png"), format = "png")