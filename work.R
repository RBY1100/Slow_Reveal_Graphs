library(tidyverse)
library(ggpubr)
library(ggpol)
library(ggnewscale)
library(magick)
library(showtext)

font_add_google(name = "Roboto", regular.wt=700, family = "bold")
font_add_google(name = "Roboto", regular.wt=300, family = "skinny")
font_add_google(name = "PT Serif", regular.wt=700, family = "titles")
font_add_google(name = "PT Serif", regular.wt=400, family = "normal")

showtext_auto()


animals <- data.frame(dog = c(22000,1), sheep = c(11000, 11000), goat = c(10500,11500), pig_cow = c(10300,11700),
                      cat = c(9500,12500), zebu = c(8000,14000), llama =c(8000,20000), horse = c(7500,20000),
                      alpaca = c(7000,20000), b_camel = c(6500,20000), chicken = c(6000,20000), a_camel =c(4500,20000),
                      turkey = c(3000,20000), duck = c(1500,20000), blank = c(22000,1), type = c("yes", "no"))



graph <- ggplot(animals) + 
  
  geom_arcbar(aes(shares = blank, r0 = -9, r1 = -32, color = type, fill = type), sep=0) + 
  
  scale_fill_manual(values =c("white","white")) +
  scale_color_manual(values =c("white","white")) +
  new_scale_color() + 
  new_scale_fill() + 
  
  geom_arcbar(aes(shares = duck, r0 = -9.5, r1 = -10.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = turkey, r0 = -11, r1 = -12, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = a_camel, r0 = -12.5, r1 = -13.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = chicken, r0 = -14, r1 = -15, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = b_camel, r0 = -15.5, r1 = -16.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = alpaca, r0 = -17, r1 = -18, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = horse, r0 = -18.5, r1 = -19.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = llama, r0 = -20, r1 = -21, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = zebu, r0 = -21.5, r1 = -22.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = pig_cow, r0 = -24.5, r1 = -25.5, color = type, fill = type), sep=0) +
  geom_arcbar(aes(shares = pig_cow, r0 = -26, r1 = -27, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = goat, r0 = -27.5, r1 = -28.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = sheep, r0 = -29, r1 = -30, color = type, fill = type), sep=0) + 
  scale_fill_manual(values =c("white","#e85d41")) +
  scale_color_manual(values =c("white","#e85d41")) +
  new_scale_color() + 
  new_scale_fill() + 
  
  geom_arcbar(aes(shares = dog, r0 = -30.5, r1 = -31.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = cat, r0 = -23, r1 = -24, color = type, fill = type), sep=0) + 
  scale_fill_manual(values =c("white","#359dbc")) +
  scale_color_manual(values =c("white","#359dbc")) +
  new_scale_color() + 
  new_scale_fill() + 
  
  geom_arcbar(aes(shares = a_camel, r0 = -12.5, r1 = -13.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = b_camel, r0 = -15.5, r1 = -16.5, color = type, fill = type), sep=0) + 
  geom_arcbar(aes(shares = horse, r0 = -18.5, r1 = -19.5, color = type, fill = type), sep=0) + 
  scale_fill_manual(values =c("white","#dfcfb2")) +
  scale_color_manual(values =c("white","#dfcfb2"))+
  
  coord_flip() +
  theme(legend.position = "none",
        panel.grid = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        plot.background = element_rect(color="#dfcfb2", fill="#dfcfb2"),
        panel.background = element_rect(color="#dfcfb2", fill="#dfcfb2"))

gap <- ggplot() + theme_void() + theme(plot.background = element_rect(fill="#dfcfb2", color="#dfcfb2"))


png(here::here("Work.png"),width=500,height=900)
ggarrange(gap, ggarrange(gap, graph, gap, ncol = 3, widths = c(.4, 1, .02)), gap, nrow = 3, heights = c(.15, 1, .3))
dev.off()

original <- image_read(here::here("Work.png"))



img <- image_draw(original)

text(427, 138, "13,000-34,000 BCE", family="bold", cex = .75, srt=7, col = "black")
text(189, 424, "8,000 BCE", family="bold", cex = .75, srt=275, col = "black")
text(206, 441, "8,500 BCE", family="bold", cex = .75, srt=282, col = "black")
text(223, 448, "8,300 BCE", family="bold", cex = .75, srt=284, col = "black")
text(237, 447, "8,300 BCE", family="bold", cex = .75, srt=285, col = "black")
text(258, 469, "7,500 BCE", family="bold", cex = .75, srt=290, col = "black")
text(290, 500, "6,000 BCE", family="bold", cex = .75, srt=301, col = "black")
text(332, 527, "4,000 BCE", family="bold", cex = .75, srt=317, col = "black")
text(351, 525, "3,500 BCE", family="bold", cex = .75, srt=319, col = "black")
text(368, 520, "3,000 BCE", family="bold", cex = .75, srt=323, col = "black")
text(383, 514, "2,500 BCE", family="bold", cex = .75, srt=325, col = "black")
text(399, 509, "2,000 BCE", family="bold", cex = .75, srt=329, col = "black")
text(422, 505, "1,000 BCE", family="bold", cex = .75, srt=340, col = "black")
text(438, 496, "0 CE", family="bold", cex = .75, srt=348, col = "black")
text(462, 488, "1,000", family="bold", cex = .75, srt=355, col = "black")

segments(x0=473,y0=325, x1=473, y1=125, lwd = 1, lty = "solid")
segments(x0=455,y0=326, x1=408, y1=146, lwd = 1, lty = "solid")

segments(x0=433,y0=332, x1=346, y1=164, lwd = 1, lty = "solid")

segments(x0=409,y0=349, x1=281, y1=204, lwd = 1, lty = "solid")


text(180, 40, "Domestication", family="titles", cex = 4, col = "black")
text(137, 85, "of Animals", family="titles", cex = 4, col = "black")
text(88, 119, "A BRIEF TIMELINE", family="skinny", cex = 1.5, col = "black")
text(142, 140, "Humans have domesticated animals for materials,", family="titles", cex = .9, col = "black")
text(136, 150, "work, and companionship all around the world.", family="titles", cex = .9, col = "black")

text(107, 170, "When did each animal get domesticated?", family="titles", cex = .8, col = "black")
text(107, 180, "Though exact dating is tricky and ongoing, this", family="normal", cex = .75, col = "black")
text(108, 190, "timeline highlights the domestication period of", family="normal", cex = .75, col = "black")
text(106, 200, "some animals based on arcaeological findings.", family="normal", cex = .75, col = "black")

text(92, 220, "Domesticated animals fall into roughly", family="normal", cex = .75, col = "black")
text(92, 230, "three categories [though many animals", family="normal", cex = .75, col = "black")
text(55, 240, "fall under multiple]:", family="normal", cex = .75, col = "black")










dev.off()

image_write(img, path = here::here("Work2.png"), format = "png")


#grid.raster(pr, .905, .1, height = .12)



