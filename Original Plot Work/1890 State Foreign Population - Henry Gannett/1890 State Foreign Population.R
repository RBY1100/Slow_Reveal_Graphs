library(tidyverse)
library(showtext)
library(readxl)
library(grid)
library(magick)
library(srtools)

#
# FILE:
# 1890 State Foreign Population.R
#
# DESCRIPTION:
# This code is for the 1890 State Foreign Population Graph from Henry Gannett. The png's show the various stages of revealing the graphs.
# Source: https://www.loc.gov/resource/g3701gm.gct00010/?sp=29&r=0.357,0.124,0.562,0.357,0
#
# SLOW REVEAL ORDER:
#   
# N: RECREATED GRAPHIC
# 1: FULLY CONCEALED GRAPHIC
# 2: REVEAL STATE LABEL
# 3: REVEAL TITLE
# 4: REVEAL UNIT
# 5: REVEAL NEW YORK
# 6: REVEAL HIGH POPULATION
#
# AUTHORS:
#   Robert Bilyk
#


#To install the srtools package, you will need to install the package from github:
#
#library(devtools)
#install_github("RBY1100/srtools_package")

font_add_google(name = "Courier Prime", family = "Main")
showtext_auto()

data <- read_xlsx(here::here("Original Plot Work", "1890 State Foreign Population - Henry Gannett", "Henry Gannett State Foreign Population 1890.xlsx")) %>%
  arrange(desc(Foreign))

data$State <- toupper(data$State)
data$Foreign <- data$Foreign / 1000


## N: RECREATED GRAPHIC

picture <- image_graph(width = 500, height = 800)

ggplot(data, aes(x = Foreign, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45 ) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,1600), breaks=seq(100,1500,100)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_blank(),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = 3, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10))

grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.2, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.97, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.958, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.11,y=.9645, gp=gpar(fontsize=8, fontfamily="Main")))
grid.draw(textGrob("37. FOREIGN BORN POPULATION, BY STATES AND TERRITORIES:1890", x=.5, y=.99, gp=gpar(fontsize=7, fontfamily="Main")))

dev.off()

img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "1890 State Foreign Population - Henry Gannett", "7-Final-State-Foreign-Population-1890.png"), format = "png")


## 1: FULLY CONCEALED GRAPHIC

picture <- image_graph(width = 500, height = 800)

ggplot(data, aes(x = Foreign, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45 ) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,1600), breaks=seq(100,1500,100)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_blank(),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = 3, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10)) +
  hide(c("xtext", "ytext", "xtick","tag"), "#f1d9b5")

grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.2, y0 = 0.012, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.95, y0 = 0.958, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.95, y0 = 0.012, y1 = 0.012))

dev.off()

img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "1890 State Foreign Population - Henry Gannett", "1-Concealed-State-Foreign-Population-1890.png"), format = "png")


## 2: REVEAL STATE LABEL

picture <- image_graph(width = 500, height = 800)

ggplot(data, aes(x = Foreign, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45 ) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,1600), breaks=seq(100,1500,100)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_blank(),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = 3, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10)) +
  hide(c("xtext", "ytext", "xtick","tag"), "#f1d9b5")


grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.2, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.97, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.958, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.11,y=.9645, gp=gpar(fontsize=8, fontfamily="Main")))

dev.off()

img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "1890 State Foreign Population - Henry Gannett", "2-StateReveal-State-Foreign-Population-1890.png"), format = "png")


## 3: REVEAL TITLE

picture <- image_graph(width = 500, height = 800)

ggplot(data, aes(x = Foreign, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45 ) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,1600), breaks=seq(100,1500,100)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_blank(),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = 3, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10)) +
  hide(c("xtext", "ytext", "xtick"), "#f1d9b5")

grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.2, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.97, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.958, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.11,y=.9645, gp=gpar(fontsize=8, fontfamily="Main")))
grid.draw(textGrob("37. FOREIGN BORN POPULATION, BY STATES AND TERRITORIES:1890", x=.5, y=.99, gp=gpar(fontsize=7, fontfamily="Main")))

dev.off()

img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "1890 State Foreign Population - Henry Gannett", "3-TitleReveal-State-Foreign-Population-1890.png"), format = "png")


## 4: REVEAL UNITS

picture <- image_graph(width = 500, height = 800)

ggplot(data, aes(x = Foreign, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45 ) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,1600), breaks=seq(100,1500,100)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_blank(),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = 3, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10)) +
  hide(c("ytext"), "#f1d9b5")

grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.2, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.97, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.958, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.11,y=.9645, gp=gpar(fontsize=8, fontfamily="Main")))
grid.draw(textGrob("37. FOREIGN BORN POPULATION, BY STATES AND TERRITORIES:1890", x=.5, y=.99, gp=gpar(fontsize=7, fontfamily="Main")))

dev.off()

img <- image_draw(picture)
dev.off()

image_write(img, path = here::here("Original Plot Work", "1890 State Foreign Population - Henry Gannett", "4-PopReveal-State-Foreign-Population-1890.png"), format = "png")



## 5: REVEAL NEW YORK

picture <- image_graph(width = 500, height = 800)

ggplot(data, aes(x = Foreign, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45 ) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,1600), breaks=seq(100,1500,100)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_blank(),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = 3, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10)) 

grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.2, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.97, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.958, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.11,y=.9645, gp=gpar(fontsize=8, fontfamily="Main")))
grid.draw(textGrob("37. FOREIGN BORN POPULATION, BY STATES AND TERRITORIES:1890", x=.5, y=.99, gp=gpar(fontsize=7, fontfamily="Main")))

dev.off()

img <- image_draw(picture)
polygon(c(10, 90, 90, 10), c(55, 55, 788, 788), border = "#f1d9b5", col = "#f1d9b5")

dev.off()

image_write(img, path = here::here("Original Plot Work", "1890 State Foreign Population - Henry Gannett", "5-NYSReveal-State-Foreign-Population-1890.png"), format = "png")


## 6: REVEAL HIGH POPULATION

picture <- image_graph(width = 500, height = 800)

ggplot(data, aes(x = Foreign, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45 ) +
  labs(tag = "(In thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,1600), breaks=seq(100,1500,100)) +
  theme(axis.text.x = element_text(family = "Main", size = 6, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_blank(),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = 3, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(20,10,10,10)) 

grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.2, x1 = 0.2, y0 = 0.012, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.97, y1 = 0.97))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.958, y1 = 0.958))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.11,y=.9645, gp=gpar(fontsize=8, fontfamily="Main")))
grid.draw(textGrob("37. FOREIGN BORN POPULATION, BY STATES AND TERRITORIES:1890", x=.5, y=.99, gp=gpar(fontsize=7, fontfamily="Main")))

dev.off()

img <- image_draw(picture)
polygon(c(10, 90, 90, 10), c(205, 205, 788, 788), border = "#f1d9b5", col = "#f1d9b5")

dev.off()

image_write(img, path = here::here("Original Plot Work", "1890 State Foreign Population - Henry Gannett", "6-HighPopReveal-State-Foreign-Population-1890.png"), format = "png")
