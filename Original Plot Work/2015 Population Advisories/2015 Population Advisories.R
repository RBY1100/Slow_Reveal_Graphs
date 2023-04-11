library(tidyverse)
library(magick)
library(ggpubr)
library(showtext)

#
# FILE:
# 2015 Population Advisories.R
#
# DESCRIPTION:
# This code is for Long-term Drinking Water Advisories Graph from the Human Rights Watch. The png's include  
# different graphs for the slow reveal.  
# Source: https://www.hrw.org/report/2016/06/07/make-it-safe/canadas-obligation-end-first-nations-water-crisis
#
# SLOW REVEAL ORDER:
#   
# 6: RECREATED GRAPHIC
# 1: FULLY CONCEALED GRAPHIC
# 2: REVEAL XAXIS
# 3: REVEAL YAXIS
# 4a: REVEAL TITLE OPT1
# 4b: REVEAL TITLE OPT2
# 5: REVEAL TITLE
# 7: ORIGINAL GRAPHIC
#
# AUTHORS:
#   Robert Bilyk
#

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



## 6: RECREATED GRAPHIC

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, color=Type, alpha = .5, size=1.75)) +
  labs(title = "Long-term Drinking Water Advisories",
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



## 1: FULLY CONCEALED GRAPHIC

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, alpha = .3, size=1.75)) +
  labs(title = "Long-term Drinking Water Advisories",
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



## 2: REVEAL XAXIS

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, alpha = .3, size=1.75)) +
  labs(title = "Long-term Drinking Water Advisories",
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



## 3: REVEAL YAXIS

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, alpha = .3, size=1.75)) +
  labs(title = "Long-term Drinking Water Advisories",
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



## 4a: REVEAL TITLE OPT1

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, alpha = .3, size=1.75)) +
  labs(title = "Long-term Drinking Water Advisories",
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

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "4a 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "4a 2015 Population Advisories U.png"))


img <- image_draw(original)

polygon(c(170, 530, 530, 170), c(45, 45, 65, 65), border = "black", col = "gray")
polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "4a 2015 Population Advisories.png"), format = "png")



## 4b: REVEAL TITLE OPT2

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, alpha = .3, size=1.75)) +
  labs(title = "Long-term Drinking Water Advisories",
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

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "4b 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "4b 2015 Population Advisories U.png"))


img <- image_draw(original)


polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "4b 2015 Population Advisories.png"), format = "png")



## 5: REVEAL TITLE

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, alpha = .3, size=1.75)) +
  labs(title = "Long-term Drinking Water Advisories",
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



## 7: ORIGINAL GRAPHIC

graph <- ggplot(data=data) + geom_point(aes(x=Length, y=Population, color=Type, alpha = .5, size=1.75)) +
  labs(title = "2015 advisories",
       subtitle = "(Population and Length of Time)",
       y = "Population served",
       x = "Length of advisory (years)") +
  theme(legend.position = "none",
        plot.title = element_text(size=16),
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

png(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "7 Original 2015 Population Advisories U.png"),width=700,height=500)
ggarrange(gap,
          ggarrange(gap, graph, gap, nrow = 3, heights = c(.1, 1, .15)),
          gap, ncol = 3, widths = c(.05,1,.1))
dev.off()



original <- image_read(here::here("Original Plot Work", "2015 Population Advisories", "Unfinished Graphs", "7 Original 2015 Population Advisories U.png"))


img <- image_draw(original)

text(200, 460, ".", cex = 8, family="Circle", col = "#ff9c00")
text(310, 460, "Active (as of 12/31/2015)", cex = 1.5)
text(440, 460, ".", cex = 8, family="Circle", col = "#8f4fa9")
text(485, 460, "Revoked", cex = 1.5)

polygon(c(90, 635, 635, 90), c(97, 97, 90, 90), border = "white", col = "white")
polygon(c(630, 635, 635, 630), c(480, 480, 90, 90), border = "white", col = "white")


dev.off()


image_write(img, path = here::here("Original Plot Work", "2015 Population Advisories", "7 Original 2015 Population Advisories.png"), format = "png")












