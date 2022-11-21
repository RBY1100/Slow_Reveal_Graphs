library(tidyverse)
library(showtext)
library(magick)

gap <- ggplot() + theme_void()

picture <- image_graph(width = 1000, height = 1000)
gap 
dev.off()

img <- image_draw(picture)

segments(x0=23,y0=23, x1=23, y1=977, lwd = .75, lty = "solid")
segments(x0=23,y0=23, x1=977, y1=23, lwd = .75, lty = "solid")
segments(x0=977,y0=977, x1=977, y1=23, lwd = .75, lty = "solid")
segments(x0=23,y0=977, x1=977, y1=977, lwd = .75, lty = "solid")

segments(x0=20,y0=20, x1=20, y1=980, lwd = 3, lty = "solid")
segments(x0=20,y0=20, x1=980, y1=20, lwd = 3, lty = "solid")
segments(x0=980,y0=980, x1=980, y1=20, lwd = 3, lty = "solid")
segments(x0=20,y0=980, x1=980, y1=980, lwd = 3, lty = "solid")

segments(x0=17,y0=17, x1=17, y1=983, lwd = .75, lty = "solid")
segments(x0=17,y0=17, x1=983, y1=17, lwd = .75, lty = "solid")
segments(x0=983,y0=983, x1=983, y1=17, lwd = .75, lty = "solid")
segments(x0=17,y0=983, x1=983, y1=983, lwd = .75, lty = "solid")

text(960, 10, "MAP 1.", family = "serif", cex = 1, col = "#383227")

segments(x0=23,y0=75, x1=125, y1=50, lwd = 1, lty = "solid")
segments(x0=115,y0=23, x1=125, y1=50, lwd = 1, lty = "solid")
segments(x0=155,y0=23, x1=162, y1=42, lwd = 1, lty = "solid")
segments(x0=235,y0=23, x1=162, y1=42, lwd = 1, lty = "solid")

segments(x0=23,y0=100, x1=45, y1=95, lwd = 1, lty = "solid")
segments(x0=70,y0=145, x1=45, y1=95, lwd = 1, lty = "solid")
segments(x0=73,y0=88, x1=98, y1=138, lwd = 1, lty = "solid")

segments(x0=73,y0=88, x1=135, y1=72, lwd = 1, lty = "solid")

segments(x0=172,y0=63, x1=240, y1=44, lwd = 1, lty = "solid")

segments(x0=265,y0=38, x1=310, y1=23, lwd = 1, lty = "solid")

segments(x0=135,y0=72, x1=152, y1=122, lwd = 1, lty = "solid")
segments(x0=172,y0=63, x1=188, y1=110, lwd = 1, lty = "solid")

segments(x0=240,y0=44, x1=251, y1=90, lwd = 1, lty = "solid")
segments(x0=265,y0=38, x1=275, y1=83, lwd = 1, lty = "solid") 

segments(x0=294,y0=30, x1=304, y1=75, lwd = 1, lty = "solid") 
segments(x0=300,y0=28, x1=310, y1=73, lwd = 1, lty = "solid") 

segments(x0=23,y0=155, x1=70, y1=145, lwd = 1, lty = "solid") 
segments(x0=152,y0=122, x1=98, y1=138, lwd = 1, lty = "solid")
segments(x0=251,y0=90, x1=188, y1=110, lwd = 1, lty = "solid")
segments(x0=275,y0=83, x1=304, y1=75, lwd = 1, lty = "solid") 
segments(x0=400,y0=50, x1=310, y1=73, lwd = 1, lty = "solid") 

segments(x0=400,y0=50, x1=390, y1=23, lwd = 1, lty = "solid") 
segments(x0=423,y0=57, x1=410, y1=23, lwd = 1, lty = "solid") 

segments(x0=423,y0=57, x1=550, y1=23, lwd = 1, lty = "solid") 

segments(x0=30,y0=162, x1=73, y1=152, lwd = 1, lty = "solid") 
segments(x0=30,y0=162, x1=35, y1=178, lwd = 1, lty = "solid") 
segments(x0=50,y0=174, x1=35, y1=178, lwd = 1, lty = "solid") 
segments(x0=50,y0=174, x1=51, y1=178, lwd = 1, lty = "solid") 
segments(x0=38,y0=182, x1=51, y1=178, lwd = 1, lty = "solid") 
segments(x0=38,y0=182, x1=45, y1=210, lwd = 1, lty = "solid") 
segments(x0=30,y0=178, x1=40, y1=211, lwd = 1, lty = "solid") 
segments(x0=30,y0=178, x1=23, y1=180, lwd = 1, lty = "solid") 

segments(x0=73,y0=152, x1=95, y1=200, lwd = 1, lty = "solid") 
segments(x0=108,y0=155, x1=125, y1=190, lwd = 1, lty = "solid") 
segments(x0=108,y0=155, x1=160, y1=140, lwd = 1, lty = "solid") 
segments(x0=165,y0=160, x1=160, y1=140, lwd = 1, lty = "solid") 
segments(x0=165,y0=160, x1=155, y1=180, lwd = 1, lty = "solid") 
segments(x0=125,y0=190, x1=155, y1=180, lwd = 1, lty = "solid") 

segments(x0=200,y0=150, x1=193, y1=130, lwd = 1, lty = "solid") 
segments(x0=257,y0=111, x1=193, y1=130, lwd = 1, lty = "solid") 
segments(x0=257,y0=111, x1=267, y1=150, lwd = 1, lty = "solid") 
segments(x0=220,y0=162, x1=267, y1=150, lwd = 1, lty = "solid") 
segments(x0=220,y0=162, x1=200, y1=150, lwd = 1, lty = "solid") 

segments(x0=280,y0=105, x1=320, y1=93, lwd = 1, lty = "solid") 
segments(x0=280,y0=105, x1=285, y1=125, lwd = 1, lty = "solid") 
segments(x0=325,y0=113, x1=285, y1=125, lwd = 1, lty = "solid") 
segments(x0=325,y0=113, x1=320, y1=93, lwd = 1, lty = "solid") 

dev.off()


image_write(img, path = here::here("Original Plot Work", "Cholera Map", "Cholera Map.png"), format = "png")
