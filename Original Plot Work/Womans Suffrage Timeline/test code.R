library(tidyverse)
library(leaflet)
library(maps)
library(mapdata)
library(mapview)
library(readxl)
library(magick)


#Graph 1
leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor="#ededed", color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "1 Womans Suffrage Timeline.png"))


#Graph 2
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data1.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)
 
mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "2 Womans Suffrage Timeline.png"))


#Graph 3
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data1.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "3 Womans Suffrage Timeline.png"))


#Graph 4
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data2.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "4 Womans Suffrage Timeline.png"))


#Graph 5
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data2.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "5 Womans Suffrage Timeline.png"))






#Graph 6
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data3.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "6 Womans Suffrage Timeline.png"))


#Graph 7
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data3.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "7 Womans Suffrage Timeline.png"))


#Graph 8
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data4.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "8 Womans Suffrage Timeline.png"))


#Graph 9
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data4.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "9 Womans Suffrage Timeline.png"))


#Graph 10
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data5.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "10 Womans Suffrage Timeline.png"))


#Graph 11
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data5.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "11 Womans Suffrage Timeline.png"))


#Graph 12
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data6.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "12 Womans Suffrage Timeline.png"))


#Graph 13
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data6.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "13 Womans Suffrage Timeline.png"))


#Graph 14
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data7.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "14 Womans Suffrage Timeline.png"))


#Graph 15
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data7.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "15 Womans Suffrage Timeline.png"))


#Graph 16
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data8.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "16 Womans Suffrage Timeline.png"))


#Graph 17
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data8.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "17 Womans Suffrage Timeline.png"))


#Graph 18
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data9.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "18 Womans Suffrage Timeline.png"))


#Graph 19
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data9.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "19 Womans Suffrage Timeline.png"))


#Graph 20
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data10.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "20 Womans Suffrage Timeline.png"))


#Graph 21
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data10.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "21 Womans Suffrage Timeline.png"))


#Graph 22
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data11.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "22 Womans Suffrage Timeline.png"))


#Graph 23
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data11.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "23 Womans Suffrage Timeline.png"))


#Graph 24
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data12.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "24 Womans Suffrage Timeline.png"))


#Graph 25
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data12.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "25 Womans Suffrage Timeline.png"))


#Graph 26
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data13.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "26 Womans Suffrage Timeline.png"))


#Graph 27
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data13.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "27 Womans Suffrage Timeline.png"))


#Graph 28
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data14.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "28 Womans Suffrage Timeline.png"))


#Graph 29
types1 <- read_xlsx(here::here("Original Plot Work", "Womans Suffrage Timeline", "Data", "data14.xlsx"))

mapStates <- maps::map("state", fill = TRUE, plot = TRUE)

mapStates$test <- types1$test
factpal <- colorFactor(c("#ededed","#6d8fb4"), mapStates$test)

leaf <- leaflet(data = mapStates) %>% 
  addTiles() %>%
  addPolygons(stroke = TRUE, fillColor = ~factpal(test), color="black", fillOpacity = 1, weight=.5) %>%
  setView(lng = -97, lat = 40, zoom = 4) %>%
  addProviderTiles("CartoDB.PositronNoLabels")


mapshot(leaf, file = here::here("Original Plot Work", "Womans Suffrage Timeline", "29 Womans Suffrage Timeline.png"))