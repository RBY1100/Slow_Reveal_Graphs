library(tidyverse)
library(showtext)
library(readxl)
library(ggpubr)
library(magick)

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
        panel.grid.major.x = element_line(color="black", size=.25),
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
        panel.grid.major.x = element_line(color="black", size=.25),
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
        panel.grid.major.x = element_line(color="black", size=.25),
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
        panel.grid.major.x = element_line(color="black", size=.25),
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
          ggarrange(gap, plot3, gap, plot4, gap, plot5, gap, plot6, ncol = 9, widths = c(.01, 1, .01, 1, .01, 1, .01, 1, .01, 1, .01)), 
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


dev.off()

image_write(img, path = here::here("Original Plot Work", "Mortality from Consumption", "Mortality from ConsumptionF.png"), format = "png")

