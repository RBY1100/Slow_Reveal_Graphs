library(tidyverse)
library(magick)
library(ggpubr)
library(showtext)


font_add_google(name = "Barlow Condensed", family = "Circle")
showtext_auto()


data <- data.frame(Population = c(50,75,100,200,260,350,500,525,530,1650,1900,
                                  75, 85, 760, 850, 350, 25, 100, 150, 300, 450,
                                  700, 5, 10, 100, 110, 200, 300, 325, 25, 30, 40,
                                  300, 350, 150, 2500,480, 1480, 25, 30, 325),
                   Length = c(0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,2,3,4,5,6,6,6,7,7,7,7,9,10,
                              11,11,12,12,12,13,13,14,14,18,18,20),
                   Type = c(1,2,1,2,1,2,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
                            1,1,1,1,1,1,1,1,1,1,1))
data$Type <- as.factor(data$Type)




graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, color=Type, alpha = .5, size=1.75)) +
  labs(title = "2015 Advisories",
       subtitle = "(Population and Length of Time)",
       y = "Population Served",
       x = "Length of advisory (years)") +
  theme(legend.position = "none",
        plot.title = element_text(size=24),
        plot.subtitle = element_text(size=24),
        axis.title = element_text(size=16, color="black"),
        axis.text = element_text(size=16, color="black"),
        axis.ticks = element_line(linewidth = 1),
        axis.ticks.length=unit(.2, "cm"),
        panel.grid.major = element_line(color="black"),
        panel.grid.minor = element_line(color="gray"),
        panel.background = element_rect(color="gray" ,fill = "white"))



gap <- ggplot() + theme_void()

png(here::here("Original Plot Work", "2015 Population Advisories", "2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "2015 Population Advisories U.png"))


img <- image_draw(original)

text(175, 460, ".", cex = 6, family="Circle", col = "red")
text(285, 460, "Active (as of 12/31/2015)", cex = 1.5)
text(415, 460, ".", cex = 6, family="Circle", col = "red")
text(460, 460, "Revoked", cex = 1.5)

dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "2015 Population Advisories.png"), format = "png")


















