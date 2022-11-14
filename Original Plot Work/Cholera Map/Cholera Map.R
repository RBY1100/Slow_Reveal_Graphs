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

dev.off()


image_write(img, path = here::here("Original Plot Work", "Cholera Map", "Cholera Map.png"), format = "png")
