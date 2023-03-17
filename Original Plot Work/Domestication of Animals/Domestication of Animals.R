#https://docs.google.com/presentation/d/1HQkkZU9aho9ZDgUHnCisjghexcrMFCvgtaFYevR1_9Q/edit#slide=id.g1f6c30b6369_0_118

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
        plot.background = element_rect(color="#f2ece7", fill="#f2ece7"),
        panel.background = element_rect(color="#f2ece7", fill="#f2ece7"))

gap <- ggplot() + theme_void() + theme(plot.background = element_rect(fill="#f2ece7", color="#f2ece7"))


png(here::here("Original Plot Work", "Domestication of Animals", "temp.png"),width=500,height=900)
ggarrange(gap, ggarrange(gap, graph, gap, ncol = 3, widths = c(.4, 1, .02)), gap, nrow = 3, heights = c(.15, 1, .3))
dev.off()

original <- image_read(here::here("Original Plot Work", "Domestication of Animals", "temp.png"))



img <- image_draw(original)

segments(x0=473,y0=325, x1=473, y1=125, lwd = 1, lty = "solid")
segments(x0=473,y0=30, x1=473, y1=125, lwd = 1, lty = "solid", col="#359dbc")

segments(x0=461,y0=325, x1=431, y1=142, lwd = 1, lty = "solid")

segments(x0=447,y0=327, x1=382, y1=152, lwd = 1, lty = "solid")

segments(x0=433,y0=332, x1=337, y1=168, lwd = 1, lty = "solid")

segments(x0=423,y0=339, x1=297, y1=191, lwd = 1, lty = "solid")

segments(x0=412,y0=346, x1=269, y1=213, lwd = 1, lty = "solid")
segments(x0=262,y0=205, x1=259, y1=202, lwd = 1, lty = "solid")

segments(x0=405,y0=354, x1=242, y1=238, lwd = 1, lty = "solid")

segments(x0=397,y0=362, x1=222, y1=264, lwd = 1, lty = "solid")

segments(x0=393,y0=371, x1=205, y1=294, lwd = 1, lty = "solid")

segments(x0=389,y0=381, x1=193, y1=325, lwd = 1, lty = "solid")

segments(x0=386,y0=392, x1=183, y1=360, lwd = 1, lty = "solid")
segments(x0=172,y0=357, x1=168, y1=356, lwd = 1, lty = "solid")

segments(x0=179,y0=402, x1=385, y1=402, lwd = 1, lty = "solid") #hori
segments(x0=193,y0=402, x1=179, y1=402, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=168,y0=402, x1=164, y1=402, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=402, x1=164, y1=402, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=387,y0=414, x1=239, y1=429, lwd = 1, lty = "solid")
segments(x0=208,y0=420, x1=179, y1=417, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=168,y0=418, x1=163, y1=418, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=418, x1=163, y1=418, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=389,y0=424, x1=260, y1=454, lwd = 1, lty = "solid")
segments(x0=237,y0=423, x1=181, y1=426, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=169,y0=427, x1=164, y1=427, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=427, x1=164, y1=427, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=283,y0=479, x1=392, y1=431, lwd = 1, lty = "solid")
segments(x0=243,y0=447, x1=256, y1=444, lwd = 1, lty = "solid", col="#359dbc")
segments(x0=171,y0=461, x1=189, y1=458, lwd = 1, lty = "solid", col="#359dbc")
segments(x0=0,y0=461, x1=171, y1=461, lwd = 1, lty = "solid", col="#359dbc")

segments(x0=296,y0=498, x1=397, y1=440, lwd = 1, lty = "solid")

segments(x0=322,y0=508, x1=401, y1=447, lwd = 1, lty = "solid")
segments(x0=283,y0=479, x1=272, y1=484, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=206,y0=512, x1=261, y1=488, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=197,y0=519, x1=194, y1=520, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=520, x1=194, y1=520, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=353,y0=502, x1=406, y1=452, lwd = 1, lty = "solid")
segments(x0=322,y0=508, x1=300, y1=525, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=290,y0=530, x1=243, y1=564, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=232,y0=569, x1=227, y1=572, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=572, x1=227, y1=572, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=383,y0=492, x1=411, y1=456, lwd = 1, lty = "solid")
segments(x0=337,y0=506, x1=327, y1=514, lwd = 1, lty = "solid", col="#dfcfb2")
segments(x0=243,y0=581, x1=240, y1=583, lwd = 1, lty = "solid", col="#dfcfb2")
segments(x0=0,y0=583, x1=240, y1=583, lwd = 1, lty = "solid", col="#dfcfb2")

segments(x0=353,y0=502, x1=344, y1=511, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=335,y0=519, x1=312, y1=537, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=303,y0=544, x1=261, y1=584, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=252,y0=590, x1=249, y1=592, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=592, x1=249, y1=592, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=368,y0=497, x1=359, y1=506, lwd = 1, lty = "solid", col="#dfcfb2")
segments(x0=258,y0=595, x1=246, y1=606, lwd = 1, lty = "solid", col="#dfcfb2")
segments(x0=0,y0=606, x1=246, y1=606, lwd = 1, lty = "solid", col="#dfcfb2")

segments(x0=383,y0=492, x1=373, y1=501, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=365,y0=508, x1=354, y1=519, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=345,y0=527, x1=322, y1=546, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=313,y0=553, x1=271, y1=593, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=263,y0=599, x1=238, y1=619, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=619, x1=238, y1=619, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=346,y0=650, x1=339, y1=664, lwd = 1, lty = "solid", col="#dfcfb2")
segments(x0=0,y0=664, x1=339, y1=664, lwd = 1, lty = "solid", col="#dfcfb2")

segments(x0=430,y0=489, x1=425, y1=500, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=422,y0=510, x1=416, y1=525, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=413,y0=535, x1=407, y1=549, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=402,y0=559, x1=392, y1=585, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=388,y0=595, x1=367, y1=646, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=363,y0=656, x1=354, y1=677, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=677, x1=354, y1=677, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=452,y0=482, x1=447, y1=506, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=443,y0=516, x1=440, y1=531, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=438,y0=542, x1=433, y1=556, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=430,y0=567, x1=423, y1=594, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=418,y0=604, x1=404, y1=656, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=401,y0=667, x1=393, y1=705, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=0,y0=705, x1=393, y1=705, lwd = 1, lty = "solid", col="#e85d41")

segments(x0=406,y0=492, x1=420, y1=463, lwd = 1, lty = "solid")

segments(x0=430,y0=489, x1=437, y1=472, lwd = 1, lty = "solid")

segments(x0=452,y0=482, x1=454, y1=477, lwd = 1, lty = "solid")

segments(x0=473,y0=479, x1=473, y1=677, lwd = 1, lty = "solid")

segments(x0=283,y0=504, x1=286, y1=502, lwd = 1, lty = "solid")
segments(x0=273,y0=509, x1=221, y1=537, lwd = 1, lty = "solid", col="#e85d41")
segments(x0=211,y0=541, x1=207, y1=543, lwd = 1, lty = "solid")

text(427, 138, "13,000-34,000 BCE", family="bold", cex = .75, srt=7, col = "black")
text(189, 424, "9,000 BCE", family="bold", cex = .75, srt=275, col = "black")
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

text(240, 185, "15,000 BCE", family="skinny", cex = .7, srt=315, col = "black")
text(145, 350, "10,000 BCE", family="skinny", cex = .7, srt=350, col = "black")
text(185, 552, "5,000 BCE", family="skinny", cex = .7, srt=20, col = "black")
text(473, 464, "2022 CE", family="skinny", cex = .6, srt=90, col = "black")
text(473, 348, "20,000 BCE", family="skinny", cex = .6, srt=270, col = "black")
text(442, 463, "0 CE", family="skinny", cex = .6, srt=65, col = "black")

text(435, 34, "13,000-34,000 BCE", family="skinny", cex = .7, col = "black")
text(461, 42, "Dog", family="bold", cex = .75, col = "black")

text(135, 390, "Sheep", family="bold", cex = .75, col = "black")
text(133, 398, "9,000 BCE", family="skinny", cex = .65, col = "black")

text(109, 412, "Goat", family="bold", cex = .75, col = "black")
text(138, 413, "8,500 BCE", family="skinny", cex = .65, col = "black")

text(98, 422.5, "Pig & Cow", family="bold", cex = .75, col = "black")
text(138, 422.5, "8,300 BCE", family="skinny", cex = .65, col = "black")

text(110, 456, "Cat", family="bold", cex = .75, col = "black")
text(138, 456, "7,500 BCE", family="skinny", cex = .65, col = "black")

text(115, 515, "Zebu (Humped Cow)", family="bold", cex = .75, col = "black")
text(138, 507, "6,000 BCE", family="skinny", cex = .65, col = "black")

text(150, 567, "Llama", family="bold", cex = .75, col = "black")
text(183, 567, "4,000 BCE", family="skinny", cex = .65, col = "black")

text(150, 579, "Horse", family="bold", cex = .75, col = "black")
text(183, 579, "3,500 BCE", family="skinny", cex = .65, col = "black")

text(150, 589, "Alpaca", family="bold", cex = .75, col = "black")
text(183, 589, "3,000 BCE", family="skinny", cex = .65, col = "black")

text(150, 602, "Bactrian Camel (two-humped)", family="bold", cex = .75, col = "black")
text(230, 602, "2,500 BCE", family="skinny", cex = .65, col = "black")

text(180, 615, "Chicken", family="bold", cex = .75, col = "black")
text(220, 615, "2,000 BCE", family="skinny", cex = .65, col = "black")

text(160, 659, "Arabian Camel (one-humped)", family="bold", cex = .75, col = "black")
text(240, 659, "1,000 BCE", family="skinny", cex = .65, col = "black")

text(205, 672, "Turkey", family="bold", cex = .75, col = "black")
text(250, 672, "0 CE", family="skinny", cex = .65, col = "black")

text(209, 700, "Duck", family="bold", cex = .75, col = "black")
text(244, 700, "1,000 CE", family="skinny", cex = .65, col = "black")

text(85, 755, "Though this timeline uses", family="titles", cex = .65, col = "black")

dev.off()

image_write(img, path = here::here("Original Plot Work", "Domestication of Animals", "Domestication of Animals.png"), format = "png")


#grid.raster(pr, .905, .1, height = .12)



