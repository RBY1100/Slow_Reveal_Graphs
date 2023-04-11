library(tidyverse)
library(showtext)
library(readxl)
library(grid)

#
# FILE:
# 1890 State Population Density.R
#
# DESCRIPTION:
# This code is for the 1890 State Population Density Graph from Henry Gannett. The png's show the various stages of revealing the graphs.
# Source: https://www.loc.gov/resource/g3701gm.gct00010/?sp=11&r=-0.031,0.456,1.866,1.186,0
#
# SLOW REVEAL ORDER:
#   
# N: RECREATED GRAPHIC
# 1: FULLY CONCEALED GRAPHIC
# 2: REVEAL DENSITY
# 3: REVEAL STATES
#
# AUTHORS:
#   Robert Bilyk
#

font_add_google(name = "Courier Prime", family = "Main")
showtext_auto()

data <- read_xlsx(here::here("Original Plot Work", "1890 State Population Density - Henry Gannett", "Henry Gannett State Population Density 1890.xlsx")) %>%
  arrange(desc(Density))

data$State <- toupper(data$State)

## N: RECREATED GRAPHIC

png(here::here("Original Plot Work", "1890 State Population Density - Henry Gannett", "4-Final-State-Pop-Density-1890.png"),width=500,height=800)

ggplot(data, mapping = aes(x = Density, y = fct_rev(fct_inorder(State)))) +
  geom_col(color = "black", fill = "black", width = .45) +
  scale_x_continuous(position= "top" ,limits = c(0,325), breaks = seq(25,325,25)) +
  theme(axis.text.x = element_text(family = "Main", color = "black", size = 8),
        axis.title.x = element_blank(),
        axis.text.y = element_text(family = "Main", color = "black", hjust = 0, size = 8),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.major.x = element_line( color = "black", size = .25),
        plot.background = element_rect(fill = "#f1d9b5"),
        plot.title = element_blank(),
        panel.background = element_blank(),
        plot.margin = margin(20,10,10,10))

grid.draw(segmentsGrob(x0 = 0.005, x1 = 0.005, y0 = 0.012, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.977, x1 = 0.977, y0 = 0.012, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.242, x1 = 0.242, y0 = 0.012, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.005, x1 = 0.977, y0 = 0.96, y1 = 0.96))
grid.draw(segmentsGrob(x0 = 0.005, x1 = 0.977, y0 = 0.98, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.005, x1 = 0.977, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.13,y=.969, gp=gpar(fontsize=8, fontfamily="Main")))
grid.draw(textGrob("8. NUMBER OF INHABITANTS TO THE SQUARE MILE, BY STATES AND TERRITORIES: 1890", x=.5, y=.99, gp=gpar(fontsize=7, fontfamily="Main")))

dev.off()

## 1: FULLY CONCEALED GRAPHIC

png(here::here("Original Plot Work", "1890 State Population Density - Henry Gannett", "1-Concealed-State-Pop-Density-1890.png"),width=500,height=800)

ggplot(data, mapping = aes(x = Density, y = fct_rev(fct_inorder(State)))) +
  geom_col(color = "black", fill = "black", width = .45) +
  scale_x_continuous(position= "top" ,limits = c(0,325), breaks = seq(25,325,25)) +
  theme(axis.text.x = element_text(family = "Main", color = "#f1d9b5", size = 8),
        axis.title.x = element_blank(),
        axis.text.y = element_text(family = "Main", color = "#f1d9b5", hjust = 0, size = 8),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.major.x = element_line( color = "black", size = .25),
        plot.background = element_rect(fill = "#f1d9b5"),
        plot.title = element_blank(),
        panel.background = element_blank(),
        plot.margin = margin(20,10,10,10))

grid.draw(segmentsGrob(x0 = 0.977, x1 = 0.977, y0 = 0.012, y1 = 0.96))
grid.draw(segmentsGrob(x0 = 0.242, x1 = 0.241, y0 = 0.012, y1 = 0.96))
grid.draw(segmentsGrob(x0 = 0.242, x1 = 0.977, y0 = 0.96, y1 = 0.96))
grid.draw(segmentsGrob(x0 = 0.242, x1 = 0.977, y0 = 0.012, y1 = 0.012))

dev.off()

## 2: REVEAL DENSITY

png(here::here("Original Plot Work", "1890 State Population Density - Henry Gannett", "2-DensityReveal-State-Pop-Density-1890.png"),width=500,height=800)

ggplot(data, mapping = aes(x = Density, y = fct_rev(fct_inorder(State)))) +
  geom_col(color = "black", fill = "black", width = .45) +
  scale_x_continuous(position= "top" ,limits = c(0,325), breaks = seq(25,325,25)) +
  theme(axis.text.x = element_text(family = "Main", color = "black", size = 8),
        axis.title.x = element_blank(),
        axis.text.y = element_text(family = "Main", color = "#f1d9b5", hjust = 0, size = 8),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.major.x = element_line( color = "black", size = .25),
        plot.background = element_rect(fill = "#f1d9b5"),
        plot.title = element_blank(),
        panel.background = element_blank(),
        plot.margin = margin(20,10,10,10))

grid.draw(segmentsGrob(x0 = 0.977, x1 = 0.977, y0 = 0.012, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.241, x1 = 0.241, y0 = 0.012, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.241, x1 = 0.977, y0 = 0.96, y1 = 0.96))
grid.draw(segmentsGrob(x0 = 0.241, x1 = 0.977, y0 = 0.98, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.241, x1 = 0.977, y0 = 0.012, y1 = 0.012))

dev.off()

## 3: REVEAL STATES

png(here::here("Original Plot Work", "1890 State Population Density - Henry Gannett", "3-StateReveal-State-Pop-Density-1890.png"),width=500,height=800)

ggplot(data, mapping = aes(x = Density, y = fct_rev(fct_inorder(State)))) +
  geom_col(color = "black", fill = "black", width = .45) +
  scale_x_continuous(position= "top" ,limits = c(0,325), breaks = seq(25,325,25)) +
  theme(axis.text.x = element_text(family = "Main", color = "black", size = 8),
        axis.title.x = element_blank(),
        axis.text.y = element_text(family = "Main", color = "black", hjust = 0, size = 8),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.major.x = element_line( color = "black", size = .25),
        plot.background = element_rect(fill = "#f1d9b5"),
        plot.title = element_blank(),
        panel.background = element_blank(),
        plot.margin = margin(20,10,10,10))

grid.draw(segmentsGrob(x0 = 0.005, x1 = 0.005, y0 = 0.012, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.977, x1 = 0.977, y0 = 0.012, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.241, x1 = 0.241, y0 = 0.012, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.005, x1 = 0.977, y0 = 0.96, y1 = 0.96))
grid.draw(segmentsGrob(x0 = 0.005, x1 = 0.977, y0 = 0.98, y1 = 0.98))
grid.draw(segmentsGrob(x0 = 0.005, x1 = 0.977, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.13,y=.969, gp=gpar(fontsize=8, fontfamily="Main")))

dev.off()
