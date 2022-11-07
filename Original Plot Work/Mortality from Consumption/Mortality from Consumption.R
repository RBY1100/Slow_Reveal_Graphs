library(tidyverse)
library(showtext)
library(readxl)
library(ggpubr)
library(magick)

font_add_google(name = "Cagliostro", family = "Main")
showtext_auto()

mort <- read_xlsx(here::here("Original Plot Work", "Mortality from Consumption", "Consumption Mortality.xlsx")) 

first <- mort %>%
  filter(type == "total")

second <- mort %>%
  filter(type == "white" | type == "colored")

plot1 <- ggplot(first) +
  geom_line(aes(x=year, y= rate, group = type), size=1.25) +
  scale_y_continuous(limits = c(1750,5500), breaks = seq(1800, 5400,200)) +
  scale_x_continuous(limits = c(1887,1906), breaks = seq(1887,1906,1)) +
  theme(panel.grid.minor.y = element_line(color= "black"),
        panel.grid.minor.x = element_blank(),
        panel.grid.major = element_line(color= "black"),
        panel.background = element_rect(fill="white"),
        axis.text.y = element_text(family = "Main", size = 9),
        axis.text.x = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        plot.title = element_text(family = "Main", size = 18),
        legend.position = "none")

print(plot1)

plot2 <- ggplot(second) +
  geom_line(aes(x=year, y= rate, group = type), size=1.25) +
  scale_y_continuous(limits = c(1750,5500), breaks = seq(1800, 5400,200), position = "right") +
  scale_x_continuous(limits = c(1887,1906), breaks = seq(1887,1906,1)) +
  theme(panel.grid.minor.y = element_line(color= "black"),
        panel.grid.minor.x = element_blank(),
        panel.grid.major = element_line(color= "black"),
        panel.background = element_rect(fill="white"),
        axis.text.y = element_text(family = "Main", color = "white", size = 9),
        axis.text.x = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        plot.title = element_text(family = "Main", size = 18),
        legend.position = "none")

print(plot2)


mort2 <- read_xlsx(here::here("Original Plot Work", "Mortality from Consumption", "Consumption Mortality 2.xlsx")) 

third <- mort2 %>%
  filter(type == "white")

fourth <- mort2 %>%
  filter(type == "negroes")

fifth <- mort2 %>%
  filter(type == "indians")

sixth <- mort2 %>%
  filter(type == "chinese")

plot3 <- ggplot(third, aes(x = percent, y = fct_rev(age)), fill = NA) +
  geom_col(color = "black", fill= "black", width = .5) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,50), breaks=seq(0,50,10)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="white", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.title = element_blank(),
        plot.tag = element_blank(),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10))

print(plot3)

plot4 <- ggplot(fourth, aes(x = percent, y = fct_rev(age)), fill = NA) +
  geom_col(color = "black", fill= "black", width = .5) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,50), breaks=seq(0,50,10)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="white", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.title = element_blank(),
        plot.tag = element_blank(),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10))

print(plot4)

plot5 <- ggplot(fifth, aes(x = percent, y = fct_rev(age)), fill = NA) +
  geom_col(color = "black", fill= "black", width = .5) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,50), breaks=seq(0,50,10)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="white", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.title = element_blank(),
        plot.tag = element_blank(),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10))

print(plot5)

plot6 <- ggplot(sixth, aes(x = percent, y = fct_rev(age)), fill = NA) +
  geom_col(color = "black", fill= "black", width = .5) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,50), breaks=seq(0,50,10)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="white", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.title = element_blank(),
        plot.tag = element_blank(),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10))

print(plot6)


gap <- ggplot() + theme_void()


png(here::here("Original Plot Work", "Mortality from Consumption", "Mortality from Consumption.png"),width=1000,height=700)


print(ggarrange(gap,
          ggarrange(gap, plot1, gap, plot2, gap, ncol=5, widths = c(.15, 1, .01, 1, .15)),
          gap,
          ggarrange(gap, plot3, gap, plot4, gap, plot5, gap, plot6, gap, ncol = 9, widths = c(.1, 1, .01, 1, .01, 1, .01, 1, .1)), 
          gap,
          nrow = 5, heights = c(.5, .75, .25, .4, .25))
)

dev.off()

original <- image_read(here::here("Original Plot Work", "Mortality from Consumption", "Mortality from Consumption.png"))


img <- image_draw(original)

#graphs on edge
polygon(c(50, 120, 120, 50), c(170, 170, 410, 410), border = "white", col = "white")
polygon(c(900, 120, 120, 900), c(165, 165, 183, 183), border = "white", col = "white")
text(105, 184, "5400", family = "Main", cex = .75, col = "#383227")
text(105, 195, "5200", family = "Main", cex = .75, col = "#383227")
text(105, 206, "5000", family = "Main", cex = .75, col = "#383227")
text(105, 217, "4800", family = "Main", cex = .75, col = "#383227")
text(105, 228, "4600", family = "Main", cex = .75, col = "#383227")
text(105, 239, "4400", family = "Main", cex = .75, col = "#383227")
text(105, 250, "4200", family = "Main", cex = .75, col = "#383227")
text(105, 261, "4000", family = "Main", cex = .75, col = "#383227")
text(105, 272, "3800", family = "Main", cex = .75, col = "#383227")
text(105, 283, "3600", family = "Main", cex = .75, col = "#383227")
text(105, 294, "3400", family = "Main", cex = .75, col = "#383227")
text(105, 305, "3200", family = "Main", cex = .75, col = "#383227")
text(105, 316, "3000", family = "Main", cex = .75, col = "#383227")
text(105, 327, "2800", family = "Main", cex = .75, col = "#383227")
text(105, 338, "2600", family = "Main", cex = .75, col = "#383227")
text(105, 349, "2400", family = "Main", cex = .75, col = "#383227")
text(105, 360, "2200", family = "Main", cex = .75, col = "#383227")
text(105, 371, "2000", family = "Main", cex = .75, col = "#383227")
text(105, 382, "1800", family = "Main", cex = .75, col = "#383227")

polygon(c(900, 879, 879, 900), c(170, 170, 410, 410), border = "white", col = "white")
polygon(c(900, 120, 120, 900), c(392, 392, 410, 410), border = "white", col = "white")
text(890, 184, "5400", family = "Main", cex = .75, col = "#383227")
text(890, 195, "5200", family = "Main", cex = .75, col = "#383227")
text(890, 206, "5000", family = "Main", cex = .75, col = "#383227")
text(890, 217, "4800", family = "Main", cex = .75, col = "#383227")
text(890, 228, "4600", family = "Main", cex = .75, col = "#383227")
text(890, 239, "4400", family = "Main", cex = .75, col = "#383227")
text(890, 250, "4200", family = "Main", cex = .75, col = "#383227")
text(890, 261, "4000", family = "Main", cex = .75, col = "#383227")
text(890, 272, "3800", family = "Main", cex = .75, col = "#383227")
text(890, 283, "3600", family = "Main", cex = .75, col = "#383227")
text(890, 294, "3400", family = "Main", cex = .75, col = "#383227")
text(890, 305, "3200", family = "Main", cex = .75, col = "#383227")
text(890, 316, "3000", family = "Main", cex = .75, col = "#383227")
text(890, 327, "2800", family = "Main", cex = .75, col = "#383227")
text(890, 338, "2600", family = "Main", cex = .75, col = "#383227")
text(890, 349, "2400", family = "Main", cex = .75, col = "#383227")
text(890, 360, "2200", family = "Main", cex = .75, col = "#383227")
text(890, 371, "2000", family = "Main", cex = .75, col = "#383227")
text(890, 382, "1800", family = "Main", cex = .75, col = "#383227")
polygon(c(475, 524, 524, 475), c(170, 170, 410, 410), border = "white", col = "white")

text(122, 397, "1887", family = "Main", cex = .75, col = "#383227")
text(138, 397, "'88", family = "Main", cex = .75, col = "#383227")
text(157, 397, "'89", family = "Main", cex = .75, col = "#383227")
text(176, 397, "'90", family = "Main", cex = .75, col = "#383227")
text(195, 397, "'91", family = "Main", cex = .75, col = "#383227")
text(214, 397, "'92", family = "Main", cex = .75, col = "#383227")
text(233, 397, "'93", family = "Main", cex = .75, col = "#383227")
text(252, 397, "'94", family = "Main", cex = .75, col = "#383227")
text(271, 397, "'95", family = "Main", cex = .75, col = "#383227")
text(290, 397, "'96", family = "Main", cex = .75, col = "#383227")
text(309, 397, "'97", family = "Main", cex = .75, col = "#383227")
text(328, 397, "'98", family = "Main", cex = .75, col = "#383227")
text(347, 397, "'99", family = "Main", cex = .75, col = "#383227")
text(364, 397, "1900", family = "Main", cex = .75, col = "#383227")
text(381, 397, "'01", family = "Main", cex = .75, col = "#383227")
text(401, 397, "'02", family = "Main", cex = .75, col = "#383227")
text(420, 397, "'03", family = "Main", cex = .75, col = "#383227")
text(439, 397, "'04", family = "Main", cex = .75, col = "#383227")
text(457, 397, "'05", family = "Main", cex = .75, col = "#383227")
text(476, 397, "1906", family = "Main", cex = .75, col = "#383227")

text(525, 397, "1887", family = "Main", cex = .75, col = "#383227")
text(541, 397, "'88", family = "Main", cex = .75, col = "#383227")
text(560, 397, "'89", family = "Main", cex = .75, col = "#383227")
text(579, 397, "'90", family = "Main", cex = .75, col = "#383227")
text(598, 397, "'91", family = "Main", cex = .75, col = "#383227")
text(617, 397, "'92", family = "Main", cex = .75, col = "#383227")
text(636, 397, "'93", family = "Main", cex = .75, col = "#383227")
text(655, 397, "'94", family = "Main", cex = .75, col = "#383227")
text(674, 397, "'95", family = "Main", cex = .75, col = "#383227")
text(693, 397, "'96", family = "Main", cex = .75, col = "#383227")
text(712, 397, "'97", family = "Main", cex = .75, col = "#383227")
text(731, 397, "'98", family = "Main", cex = .75, col = "#383227")
text(750, 397, "'99", family = "Main", cex = .75, col = "#383227")
text(768, 397, "1900", family = "Main", cex = .75, col = "#383227")
text(786, 397, "'01", family = "Main", cex = .75, col = "#383227")
text(805, 397, "'02", family = "Main", cex = .75, col = "#383227")
text(824, 397, "'03", family = "Main", cex = .75, col = "#383227")
text(843, 397, "'04", family = "Main", cex = .75, col = "#383227")
text(862, 397, "'05", family = "Main", cex = .75, col = "#383227")
text(881, 397, "1906", family = "Main", cex = .75, col = "#383227")


text(500, 50, "Mortality from Consumption ~ General Population", family = "Main", cex = 2.5, col = "#383227")
text(500, 80, "1887-1906.", family = "Main", cex = 2, col = "#383227")

segments(x0=15,y0=110, x1=985, y1=110, lwd = 3, lty = "solid")
segments(x0=20,y0=115, x1=980, y1=115, lwd = 1, lty = "solid")

segments(x0=15,y0=680, x1=985, y1=680, lwd = 3, lty = "solid")
segments(x0=20,y0=675, x1=980, y1=675, lwd = 1, lty = "solid")

segments(x0=15,y0=110, x1=15, y1=680, lwd = 3, lty = "solid")
segments(x0=20,y0=115, x1=20, y1=675, lwd = 1, lty = "solid")

segments(x0=985,y0=110, x1=985, y1=680, lwd = 3, lty = "solid")
segments(x0=980,y0=115, x1=980, y1=675, lwd = 1, lty = "solid")

text(290, 150, "Mortality of Northern Cities.", family = "Main", cex = 2.25, col = "#383227")
text(105, 175, "Rate per 10,000", family = "Main", cex = .5, col = "#383227")
text(290, 170, "RATE PER 10,000", family = "Main", cex = 1, col = "#383227")

text(720, 150, "Mortality of Southern Cities.", family = "Main", cex = 2.25, col = "#383227")
text(890, 175, "Rate per 10,000", family = "Main", cex = .5, col = "#383227")
text(720, 170, "RATE PER 10,000", family = "Main", cex = 1, col = "#383227")

text(500, 475, "Proportionate Consumption Mortality ~ MALES.", family = "Main", cex = 2.25, col = "#383227")

dev.off()

image_write(img, path = here::here("Original Plot Work", "Mortality from Consumption", "Mortality from ConsumptionF.png"), format = "png")

