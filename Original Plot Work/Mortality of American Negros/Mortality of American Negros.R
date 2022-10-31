library(tidyverse)
library(showtext)
library(readxl)
library(magick)
library(grid)


brac <- image_read(here::here("Original Plot Work", "Mortality of American Negros", "bracket.png"))
#grid.raster(brac, .036, .428, height = .01, width = 1)


#Adding Dimensions
gap <- ggplot() + theme_void() + 
  theme(plot.background = element_rect(color = "#d7d2bf", fill = "#d7d2bf"))

picture <- image_graph(width = 800, height = 1000)
gap 
dev.off()



img <- image_draw(picture)

text(400, 20, "Mortality of American Negroes.", family = "serif", cex = 2, col = "#383227")
segments(x0=350,y0=40, x1=450, y1=40, lwd = 1, lty = "solid")
text(400, 60, "Mortalité parmi les Négres Americains", family = "serif", cex = 1.25, col = "#383227")
segments(x0=350,y0=75, x1=450, y1=75, lwd = 1, lty = "solid")
text(400, 90, "Done by Atlanta University.", family = "serif", cex = 1, col = "#383227")

polygon(c(150, 150, 75, 75), c(925, 250, 250, 925), border = "#Cb6b57", col = "#Cb6b57")

polygon(c(250, 250, 325, 325), c(925, 250, 250, 925), border = "#Cb6b57", col = "#Cb6b57")

polygon(c(425, 425, 500, 500), c(925, 250, 250, 925), border = "#Cb6b57", col = "#Cb6b57")

polygon(c(600, 600, 675, 675), c(925, 250, 250, 925), border = "#Cb6b57", col = "#Cb6b57")

polygon(c(150, 150, 725, 725), c(925, 250, 250, 925), border = "#Cb6b57", col = "#Cb6b57")

dev.off()


image_write(img, path = here::here("Original Plot Work", "Mortality of American Negros", "Mortality of American Negros.png"), format = "png")
