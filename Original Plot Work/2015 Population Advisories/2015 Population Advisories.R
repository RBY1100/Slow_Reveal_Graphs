library(tidyverse)
library(magick)
library(ggpubr)
library(showtext)


font_add_google(name = "Barlow Condensed", family = "Circle")
showtext_auto()


data <- data.frame(Population = c(50,75,100,175,260,360,260,475,525,530,1650,1900,
                                  75, 85, 760, 850, 150, 350, 75, 125, 175, 450,
                                  700, 300, 10, 100, 110, 200, 300, 325, 25, 30, 40,
                                  300, 350, 150, 2500,480, 1480, 25, 50, 325),
                   Length = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,2,3,4,5,6,6,6,7,7,7,7,9,10,
                              11,11,12,12,12,13,13,14,14,18,18,20),
                   Type = c(1,2,1,1,2,1,2,2,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
                            1,1,1,1,1,1,1,1,1,1,1))
data$Type <- as.factor(data$Type)



#Final Graph

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, color=Type, alpha = .5, size=1.75)) +
  labs(title = "Long-term Crinking Water Advisories",
       subtitle = "affecting First Nations reserves (snapshot Dec 2015)",
       y = "Population affected",
       x = "Length of incident (years)") +
  theme(legend.position = "none",
        plot.title = element_text(size=16, hjust=.45),
        plot.subtitle = element_text(size=16),
        axis.title = element_text(size=11, color="black"),
        axis.text = element_text(size=12, color="black"),
        axis.ticks = element_line(linewidth = 1),
        axis.ticks.length=unit(.2, "cm"),
        panel.grid.major = element_line(color="black"),
        panel.grid.minor = element_line(color="gray"),
        panel.background = element_rect(color="gray" ,fill = "white")) +
  scale_color_manual(values = c("#ff9c00","#8f4fa9"))



gap <- ggplot() + theme_void()

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "6 Final 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "6 Final 2015 Population Advisories U.png"))


img <- image_draw(original)

text(200, 460, ".", cex = 8, family="Circle", col = "#ff9c00")
text(310, 460, "Active (as of 12/31/2015)", cex = 1.5)
text(440, 460, ".", cex = 8, family="Circle", col = "#8f4fa9")
text(485, 460, "Revoked", cex = 1.5)

polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "6 Final 2015 Population Advisories.png"), format = "png")



#First  Graph

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, size=1.75)) +
  labs(title = "Long-term Crinking Water Advisories",
       subtitle = "affecting First Nations reserves (snapshot Dec 2015)",
       y = "Population affected",
       x = "Length of incident (years)") +
  theme(legend.position = "none",
        plot.title = element_text(color="white", size=16, hjust=.45),
        plot.subtitle = element_text(color="white", size=16),
        axis.title = element_text(size=11, color="white"),
        axis.text = element_text(size=12, color="white"),
        axis.ticks = element_line(linewidth = 1),
        axis.ticks.length=unit(.2, "cm"),
        panel.grid.major = element_line(color="black"),
        panel.grid.minor = element_line(color="gray"),
        panel.background = element_rect(color="gray" ,fill = "white"))


gap <- ggplot() + theme_void()

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "1 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "1 2015 Population Advisories U.png"))


img <- image_draw(original)


polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "1 2015 Population Advisories.png"), format = "png")



#Second  Graph

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, size=1.75)) +
  labs(title = "Long-term Crinking Water Advisories",
       subtitle = "affecting First Nations reserves (snapshot Dec 2015)",
       y = "Population affected",
       x = "Length of incident (years)") +
  theme(legend.position = "none",
        plot.title = element_text(color="white", size=16, hjust=.45),
        plot.subtitle = element_text(color="white", size=16),
        axis.title.x = element_text(size=11, color="black"),
        axis.title.y = element_text(size=11, color="white"),
        axis.text.x = element_text(size=12, color="black"),
        axis.text.y = element_text(size=12, color="white"),
        axis.ticks = element_line(linewidth = 1),
        axis.ticks.length=unit(.2, "cm"),
        panel.grid.major = element_line(color="black"),
        panel.grid.minor = element_line(color="gray"),
        panel.background = element_rect(color="gray" ,fill = "white"))


gap <- ggplot() + theme_void()

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "2 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "2 2015 Population Advisories U.png"))


img <- image_draw(original)


polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "2 2015 Population Advisories.png"), format = "png")



#Third  Graph

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, size=1.75)) +
  labs(title = "Long-term Crinking Water Advisories",
       subtitle = "affecting First Nations reserves (snapshot Dec 2015)",
       y = "Population affected",
       x = "Length of incident (years)") +
  theme(legend.position = "none",
        plot.title = element_text(color="white", size=16, hjust=.45),
        plot.subtitle = element_text(color="white", size=16),
        axis.title = element_text(size=11, color="black"),
        axis.text = element_text(size=12, color="black"),
        axis.ticks = element_line(linewidth = 1),
        axis.ticks.length=unit(.2, "cm"),
        panel.grid.major = element_line(color="black"),
        panel.grid.minor = element_line(color="gray"),
        panel.background = element_rect(color="gray" ,fill = "white"))


gap <- ggplot() + theme_void()

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "3 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "3 2015 Population Advisories U.png"))


img <- image_draw(original)


polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "3 2015 Population Advisories.png"), format = "png")



#Fourth  Graph

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, size=1.75)) +
  labs(title = "Long-term Crinking Water Advisories",
       subtitle = "affecting First Nations reserves (snapshot Dec 2015)",
       y = "Population affected",
       x = "Length of incident (years)") +
  theme(legend.position = "none",
        plot.title = element_text(color="white", size=16, hjust=.45),
        plot.subtitle = element_text(color="black", size=16),
        axis.title = element_text(size=11, color="black"),
        axis.text = element_text(size=12, color="black"),
        axis.ticks = element_line(linewidth = 1),
        axis.ticks.length=unit(.2, "cm"),
        panel.grid.major = element_line(color="black"),
        panel.grid.minor = element_line(color="gray"),
        panel.background = element_rect(color="gray" ,fill = "white"))


gap <- ggplot() + theme_void()

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "4 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "4 2015 Population Advisories U.png"))


img <- image_draw(original)


polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "5 2015 Population Advisories.png"), format = "png")



#Fifth  Graph

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, size=1.75)) +
  labs(title = "Long-term Crinking Water Advisories",
       subtitle = "affecting First Nations reserves (snapshot Dec 2015)",
       y = "Population affected",
       x = "Length of incident (years)") +
  theme(legend.position = "none",
        plot.title = element_text(color="black", size=16, hjust=.45),
        plot.subtitle = element_text(color="black", size=16),
        axis.title = element_text(size=11, color="black"),
        axis.text = element_text(size=12, color="black"),
        axis.ticks = element_line(linewidth = 1),
        axis.ticks.length=unit(.2, "cm"),
        panel.grid.major = element_line(color="black"),
        panel.grid.minor = element_line(color="gray"),
        panel.background = element_rect(color="gray" ,fill = "white"))


gap <- ggplot() + theme_void()

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "5 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "5 2015 Population Advisories U.png"))


img <- image_draw(original)


polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "5 2015 Population Advisories.png"), format = "png")
















