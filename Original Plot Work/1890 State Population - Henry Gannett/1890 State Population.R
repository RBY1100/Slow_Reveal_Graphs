library(tidyverse)
library(showtext)
library(readxl)
library(grid)

#
# FILE:
# 1890 State Population.R
#
# DESCRIPTION:
# This code is for the 1890 State Population Graph from Henry Gannett. The png's show the various stages of revealing the graphs.  
# Source: https://www.loc.gov/resource/g3701gm.gct00010/?sp=11&r=-0.031,0.456,1.866,1.186,0
#
# SLOW REVEAL ORDER:
#   
# N: RECREATED GRAPHIC
# 1: FULLY CONCEALED GRAPHIC
# 2: REVEAL POPULATION
# 3: REVEAL STATES
# 4: REVEAL UNITS
#
# AUTHORS:
#   Robert Bilyk
#

font_add_google(name = "Courier Prime", family = "Main")
showtext_auto()

data <- read_xlsx(here::here("Original Plot Work", "1890 State Population - Henry Gannett", "Henry Gannett Total State Population 1890.xlsx")) %>%
  arrange(Population)

data$State <- toupper(data$State)
data$pop <- data$Population / 100000


## N: RECREATED GRAPHIC

png(here::here("Original Plot Work", "1890 State Population - Henry Gannett", "5-Final-State-Pop-1890.png"),width=500,height=800)

ggplot(data, aes(x = pop, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45, ) +
  labs(title = "6. POPULATION OF EACH STATE AND TERRITORY: 1890",
       tag = "(Hundreds of thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,62), breaks=seq(6,60,6)) +
  theme(axis.text.x = element_text(family = "Main", size = 8, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_text(family = "Main", color = "black", hjust = .24, vjust = 5, size = 8),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = -4, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(10,10,10,10))

grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.243, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.947, y1 = 0.947))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.962, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.13,y=.954, gp=gpar(fontsize=8, fontfamily="Main")))

dev.off()

## 1: FULLY CONCEALED GRAPHIC

png(here::here("Original Plot Work", "1890 State Population - Henry Gannett", "1-Concealed-State-Pop-1890.png"),width=500,height=800)

ggplot(data, aes(x = pop, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45, ) +
  labs(title = "6. POPULATION OF EACH STATE AND TERRITORY: 1890",
       tag = "(Hundreds of thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,62), breaks=seq(6,60,6)) +
  theme(axis.text.x = element_text(family = "Main", size = 8, color= "#f1d9b5"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "#f1d9b5"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_text(family = "Main", color = "#f1d9b5", hjust = .24, vjust = 5, size = 8),
        plot.tag = element_text(family = "Main", color = "#f1d9b5", hjust = .5, vjust = -4, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(10,10,10,10))

grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.947))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.243, y0 = 0.012, y1 = 0.947))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.95, y0 = 0.947, y1 = 0.947))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.95, y0 = 0.012, y1 = 0.012))

dev.off()

## 2: REVEAL POPULATION

png(here::here("Original Plot Work", "1890 State Population - Henry Gannett", "2-Pop-Reveal-State-Pop-1890.png"),width=500,height=800)

ggplot(data, aes(x = pop, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45, ) +
  labs(title = "6. POPULATION OF EACH STATE AND TERRITORY: 1890",
       tag = "(Hundreds of thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,62), breaks=seq(6,60,6)) +
  theme(axis.text.x = element_text(family = "Main", size = 8, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "#f1d9b5"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_text(family = "Main", color = "#f1d9b5", hjust = .24, vjust = 5, size = 8),
        plot.tag = element_text(family = "Main", color = "#f1d9b5", hjust = .5, vjust = -4, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(10,10,10,10))

grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.243, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.95, y0 = 0.947, y1 = 0.947))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.95, y0 = 0.962, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.95, y0 = 0.012, y1 = 0.012))

dev.off()

## 3: REVEAL STATES

png(here::here("Original Plot Work", "1890 State Population - Henry Gannett", "3-State-Reveal-State-Pop-1890.png"),width=500,height=800)

ggplot(data, aes(x = pop, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45, ) +
  labs(title = "6. POPULATION OF EACH STATE AND TERRITORY: 1890",
       tag = "(Hundreds of thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,62), breaks=seq(6,60,6)) +
  theme(axis.text.x = element_text(family = "Main", size = 8, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_text(family = "Main", color = "#f1d9b5", hjust = .24, vjust = 5, size = 8),
        plot.tag = element_text(family = "Main", color = "#f1d9b5", hjust = .5, vjust = -4, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(10,10,10,10))

grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.243, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.947, y1 = 0.947))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.962, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.13,y=.954, gp=gpar(fontsize=8, fontfamily="Main")))

dev.off()

## 4: REVEAL UNITS

png(here::here("Original Plot Work", "1890 State Population - Henry Gannett", "4-Unit-Reveal-State-Pop-1890.png"),width=500,height=800)

ggplot(data, aes(x = pop, y = fct_rev(fct_inorder(State))), fill = NA) +
  geom_col(color = "black", fill = "black", width = 0.45, ) +
  labs(title = "6. POPULATION OF EACH STATE AND TERRITORY: 1890",
       tag = "(Hundreds of thousands.)") +
  scale_x_continuous(position = "top", limits = c(0,62), breaks=seq(6,60,6)) +
  theme(axis.text.x = element_text(family = "Main", size = 8, color= "black"),
        axis.title.x = element_blank(), 
        panel.grid.major.x = element_line(color="black", size=.25),
        axis.ticks.y = element_blank(), 
        axis.title.y = element_blank(),
        axis.text.y = element_text(family = "Main", hjust = 0, size = 8, color = "black"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = "#f1d9b5"), 
        plot.title = element_text(family = "Main", color = "#f1d9b5", hjust = .24, vjust = 5, size = 8),
        plot.tag = element_text(family = "Main", color = "black", hjust = .5, vjust = -4, size = 7),
        plot.tag.position = "top",
        plot.margin = margin(10,10,10,10))

grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.01, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.95, x1 = 0.95, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.243, x1 = 0.243, y0 = 0.012, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.947, y1 = 0.947))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.962, y1 = 0.962))
grid.draw(segmentsGrob(x0 = 0.01, x1 = 0.95, y0 = 0.012, y1 = 0.012))
grid.draw(textGrob("STATES.", x=.13,y=.954, gp=gpar(fontsize=8, fontfamily="Main")))

dev.off()
