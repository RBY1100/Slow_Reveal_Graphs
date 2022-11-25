library(tidyverse)
library(showtext)
library(magick)

gap <- ggplot() + theme_void()

picture <- image_graph(width = 1000, height = 1000)
gap 
dev.off()

img <- image_draw(picture)

segments(x0=23,y0=23, x1=23, y1=977, lwd = .75, lty = "solid")
segments(x0=23,y0=23, x1=977, y1=23, lwd = .75, lty = "solid")
segments(x0=977,y0=977, x1=977, y1=23, lwd = .75, lty = "solid")
segments(x0=23,y0=977, x1=977, y1=977, lwd = .75, lty = "solid")

segments(x0=20,y0=20, x1=20, y1=980, lwd = 3, lty = "solid")
segments(x0=20,y0=20, x1=980, y1=20, lwd = 3, lty = "solid")
segments(x0=980,y0=980, x1=980, y1=20, lwd = 3, lty = "solid")
segments(x0=20,y0=980, x1=980, y1=980, lwd = 3, lty = "solid")

segments(x0=17,y0=17, x1=17, y1=983, lwd = .75, lty = "solid")
segments(x0=17,y0=17, x1=983, y1=17, lwd = .75, lty = "solid")
segments(x0=983,y0=983, x1=983, y1=17, lwd = .75, lty = "solid")
segments(x0=17,y0=983, x1=983, y1=983, lwd = .75, lty = "solid")

text(960, 10, "MAP 1.", family = "serif", cex = 1, col = "#383227")

segments(x0=23,y0=75, x1=125, y1=50, lwd = 1, lty = "solid")
segments(x0=115,y0=23, x1=125, y1=50, lwd = 1, lty = "solid")
segments(x0=155,y0=23, x1=162, y1=42, lwd = 1, lty = "solid")
segments(x0=235,y0=23, x1=162, y1=42, lwd = 1, lty = "solid")

segments(x0=23,y0=100, x1=45, y1=95, lwd = 1, lty = "solid")
segments(x0=70,y0=145, x1=45, y1=95, lwd = 1, lty = "solid")
segments(x0=73,y0=88, x1=98, y1=138, lwd = 1, lty = "solid")

segments(x0=73,y0=88, x1=135, y1=72, lwd = 1, lty = "solid")

segments(x0=172,y0=63, x1=240, y1=44, lwd = 1, lty = "solid")

segments(x0=265,y0=38, x1=310, y1=23, lwd = 1, lty = "solid")

segments(x0=135,y0=72, x1=152, y1=122, lwd = 1, lty = "solid")
segments(x0=172,y0=63, x1=188, y1=110, lwd = 1, lty = "solid")

segments(x0=240,y0=44, x1=251, y1=90, lwd = 1, lty = "solid")
segments(x0=265,y0=38, x1=275, y1=83, lwd = 1, lty = "solid") 

segments(x0=294,y0=30, x1=304, y1=75, lwd = 1, lty = "solid") 
segments(x0=300,y0=28, x1=310, y1=73, lwd = 1, lty = "solid") 

segments(x0=23,y0=155, x1=70, y1=145, lwd = 1, lty = "solid") 
segments(x0=152,y0=122, x1=98, y1=138, lwd = 1, lty = "solid")
segments(x0=251,y0=90, x1=188, y1=110, lwd = 1, lty = "solid")
segments(x0=275,y0=83, x1=304, y1=75, lwd = 1, lty = "solid") 
segments(x0=400,y0=50, x1=310, y1=73, lwd = 1, lty = "solid") 

segments(x0=400,y0=50, x1=390, y1=23, lwd = 1, lty = "solid") 
segments(x0=423,y0=57, x1=410, y1=23, lwd = 1, lty = "solid") 

segments(x0=423,y0=57, x1=550, y1=23, lwd = 1, lty = "solid") 

segments(x0=30,y0=162, x1=73, y1=152, lwd = 1, lty = "solid") 
segments(x0=30,y0=162, x1=35, y1=178, lwd = 1, lty = "solid") 
segments(x0=50,y0=174, x1=35, y1=178, lwd = 1, lty = "solid") 
segments(x0=50,y0=174, x1=51, y1=178, lwd = 1, lty = "solid") 
segments(x0=38,y0=182, x1=51, y1=178, lwd = 1, lty = "solid") 
segments(x0=38,y0=182, x1=45, y1=210, lwd = 1, lty = "solid") 
segments(x0=30,y0=178, x1=40, y1=211, lwd = 1, lty = "solid") 
segments(x0=30,y0=178, x1=23, y1=180, lwd = 1, lty = "solid") 

segments(x0=73,y0=152, x1=95, y1=200, lwd = 1, lty = "solid") 
segments(x0=108,y0=155, x1=125, y1=190, lwd = 1, lty = "solid") 
segments(x0=108,y0=155, x1=160, y1=140, lwd = 1, lty = "solid") 
segments(x0=165,y0=160, x1=160, y1=140, lwd = 1, lty = "solid") 
segments(x0=165,y0=160, x1=155, y1=180, lwd = 1, lty = "solid") 
segments(x0=125,y0=190, x1=155, y1=180, lwd = 1, lty = "solid") 

segments(x0=200,y0=150, x1=193, y1=130, lwd = 1, lty = "solid") 
segments(x0=257,y0=111, x1=193, y1=130, lwd = 1, lty = "solid") 
segments(x0=257,y0=111, x1=267, y1=150, lwd = 1, lty = "solid") 
segments(x0=220,y0=162, x1=267, y1=150, lwd = 1, lty = "solid") 
segments(x0=220,y0=162, x1=200, y1=150, lwd = 1, lty = "solid") 

segments(x0=280,y0=105, x1=320, y1=93, lwd = 1, lty = "solid") 
segments(x0=280,y0=105, x1=285, y1=125, lwd = 1, lty = "solid") 
segments(x0=325,y0=113, x1=285, y1=125, lwd = 1, lty = "solid") 
segments(x0=325,y0=113, x1=320, y1=93, lwd = 1, lty = "solid") 

segments(x0=332,y0=123, x1=335, y1=140, lwd = 1, lty = "solid") 
segments(x0=332,y0=123, x1=290, y1=137, lwd = 1, lty = "solid") 
segments(x0=295,y0=153, x1=335, y1=140, lwd = 1, lty = "solid") 
segments(x0=295,y0=153, x1=290, y1=137, lwd = 1, lty = "solid") 

segments(x0=337,y0=122, x1=340, y1=139, lwd = 1, lty = "solid") 
segments(x0=337,y0=122, x1=425, y1=105, lwd = 1, lty = "solid") 
segments(x0=430,y0=120, x1=340, y1=139, lwd = 1, lty = "solid") 
segments(x0=430,y0=120, x1=425, y1=105, lwd = 1, lty = "solid") 

segments(x0=340,y0=110, x1=420, y1=95, lwd = 1, lty = "solid") 
segments(x0=410,y0=65, x1=420, y1=95, lwd = 1, lty = "solid") 
segments(x0=330,y0=80, x1=410, y1=65, lwd = 1, lty = "solid") 
segments(x0=340,y0=110, x1=330, y1=80, lwd = 1, lty = "solid") 

segments(x0=440,y0=120, x1=430, y1=75, lwd = 1, lty = "solid") 
segments(x0=490,y0=55, x1=430, y1=75, lwd = 1, lty = "solid") 
segments(x0=440,y0=120, x1=450, y1=117, lwd = 1, lty = "solid") 
segments(x0=450,y0=105, x1=450, y1=117, lwd = 1, lty = "solid") 
segments(x0=450,y0=105, x1=457, y1=103, lwd = 1, lty = "solid") 
segments(x0=457,y0=116, x1=457, y1=103, lwd = 1, lty = "solid") 
segments(x0=457,y0=116, x1=510, y1=105, lwd = 1, lty = "solid") 
segments(x0=490,y0=55, x1=510, y1=105, lwd = 1, lty = "solid") 

segments(x0=505,y0=50, x1=525, y1=100, lwd = 1, lty = "solid") 
segments(x0=600,y0=85, x1=525, y1=100, lwd = 1, lty = "solid") 
segments(x0=600,y0=85, x1=580, y1=23, lwd = 1, lty = "solid") 
segments(x0=555,y0=30, x1=580, y1=23, lwd = 1, lty = "solid") 
segments(x0=555,y0=30, x1=570, y1=80, lwd = 1, lty = "solid") 
segments(x0=565,y0=80, x1=570, y1=80, lwd = 1, lty = "solid") 
segments(x0=565,y0=80, x1=550, y1=32, lwd = 1, lty = "solid") 
segments(x0=505,y0=50, x1=550, y1=32, lwd = 1, lty = "solid") 

segments(x0=600,y0=23, x1=620, y1=80, lwd = 1, lty = "solid") 
segments(x0=650,y0=77, x1=620, y1=80, lwd = 1, lty = "solid") 
segments(x0=650,y0=77, x1=630, y1=23, lwd = 1, lty = "solid") 

segments(x0=623,y0=35, x1=620, y1=23, lwd = 1, lty = "solid") 
segments(x0=618,y0=35, x1=615, y1=23, lwd = 1, lty = "solid") 
segments(x0=618,y0=35, x1=623, y1=35, lwd = 1, lty = "solid") 

segments(x0=665,y0=75, x1=645, y1=23, lwd = 1, lty = "solid") 
segments(x0=705,y0=70, x1=685, y1=23, lwd = 1, lty = "solid") 
segments(x0=705,y0=70, x1=665, y1=75, lwd = 1, lty = "solid") 

segments(x0=664,y0=40, x1=660, y1=23, lwd = 1, lty = "solid") 
segments(x0=670,y0=40, x1=666, y1=23, lwd = 1, lty = "solid") 
segments(x0=670,y0=40, x1=664, y1=40, lwd = 1, lty = "solid") 

segments(x0=715,y0=68, x1=695, y1=23, lwd = 1, lty = "solid") 
segments(x0=715,y0=68, x1=750, y1=63, lwd = 1, lty = "solid") 
segments(x0=745,y0=40, x1=750, y1=63, lwd = 1, lty = "solid") 
segments(x0=745,y0=40, x1=730, y1=45, lwd = 1, lty = "solid") 
segments(x0=725,y0=30, x1=730, y1=45, lwd = 1, lty = "solid") 
segments(x0=725,y0=30, x1=710, y1=30, lwd = 1, lty = "solid") 
segments(x0=715,y0=54, x1=710, y1=30, lwd = 1, lty = "solid") 
segments(x0=715,y0=54, x1=740, y1=48, lwd = 1, lty = "solid") 
segments(x0=743,y0=64, x1=740, y1=48, lwd = 1, lty = "solid") 

segments(x0=785,y0=57, x1=750, y1=63, lwd = 1, lty = "solid") 
segments(x0=785,y0=57, x1=775, y1=23, lwd = 1, lty = "solid") 

segments(x0=795,y0=55, x1=785, y1=23, lwd = 1, lty = "solid") 
segments(x0=795,y0=55, x1=810, y1=53, lwd = 1, lty = "solid") 
segments(x0=830,y0=23, x1=810, y1=53, lwd = 1, lty = "solid") 
segments(x0=835,y0=23, x1=815, y1=53, lwd = 1, lty = "solid") 
segments(x0=815,y0=53, x1=977, y1=35, lwd = 1, lty = "solid") 

segments(x0=23,y0=215, x1=40, y1=211, lwd = 1, lty = "solid") 
segments(x0=95,y0=200, x1=45, y1=210, lwd = 1, lty = "solid") 

segments(x0=23,y0=240, x1=160, y1=210, lwd = 1, lty = "solid") 
segments(x0=185,y0=225, x1=160, y1=210, lwd = 1, lty = "solid") 
segments(x0=185,y0=225, x1=195, y1=275, lwd = 1, lty = "solid") 
segments(x0=195,y0=275, x1=170, y1=280, lwd = 1, lty = "solid") 
segments(x0=170,y0=280, x1=160, y1=230, lwd = 1, lty = "solid") 
segments(x0=155,y0=230, x1=160, y1=230, lwd = 1, lty = "solid") 
segments(x0=165,y0=280, x1=155, y1=230, lwd = 1, lty = "solid") 
segments(x0=165,y0=280, x1=60, y1=305, lwd = 1, lty = "solid") 
segments(x0=55,y0=295, x1=60, y1=305, lwd = 1, lty = "solid") 
segments(x0=55,y0=295, x1=23, y1=300, lwd = 1, lty = "solid") 

segments(x0=65,y0=275, x1=80, y1=273, lwd = 1, lty = "solid") 
segments(x0=65,y0=265, x1=65, y1=273, lwd = 1, lty = "solid") 
segments(x0=65,y0=265, x1=80, y1=263, lwd = 1, lty = "solid") 
segments(x0=80,y0=265, x1=80, y1=273, lwd = 1, lty = "solid") 

segments(x0=100,y0=250, x1=120, y1=250, lwd = 1, lty = "solid") 
segments(x0=120,y0=250, x1=120, y1=270, lwd = 1, lty = "solid") 
segments(x0=100,y0=270, x1=120, y1=270, lwd = 1, lty = "solid") 
segments(x0=100,y0=250, x1=100, y1=270, lwd = 1, lty = "solid") 

segments(x0=215,y0=220, x1=235, y1=190, lwd = 1, lty = "solid") 
segments(x0=215,y0=220, x1=230, y1=305, lwd = 1, lty = "solid") 
segments(x0=285,y0=285, x1=230, y1=305, lwd = 1, lty = "solid") 
segments(x0=285,y0=285, x1=250, y1=185, lwd = 1, lty = "solid") 
segments(x0=235,y0=190, x1=250, y1=185, lwd = 1, lty = "solid") 

segments(x0=70, y0=335, x1=95, y1=410, lwd = 1, lty = "solid") 
segments(x0=70, y0=335, x1=205, y1=300, lwd = 1, lty = "solid") 
segments(x0=205, y0=300, x1=230, y1=375, lwd = 1, lty = "solid") 
segments(x0=95, y0=410, x1=230, y1=375, lwd = 1, lty = "solid") 

segments(x0=105, y0=430, x1=130, y1=425, lwd = 1, lty = "solid") 
segments(x0=145, y0=465, x1=130, y1=425, lwd = 1, lty = "solid") 
segments(x0=145, y0=465, x1=170, y1=485, lwd = 1, lty = "solid") 
segments(x0=110, y0=550, x1=170, y1=485, lwd = 1, lty = "solid") 
segments(x0=110, y0=550, x1=100, y1=500, lwd = 1, lty = "solid") 
segments(x0=95, y0=500, x1=100, y1=500, lwd = 1, lty = "solid") 
segments(x0=105, y0=550, x1=95, y1=500, lwd = 1, lty = "solid") 
segments(x0=105, y0=550, x1=80, y1=555, lwd = 1, lty = "solid") 
segments(x0=60, y0=460, x1=80, y1=555, lwd = 1, lty = "solid") 
segments(x0=60, y0=460, x1=110, y1=445, lwd = 1, lty = "solid") 
segments(x0=105, y0=430, x1=110, y1=445, lwd = 1, lty = "solid") 

segments(x0=145, y0=425, x1=240, y1=400, lwd = 1, lty = "solid") 
segments(x0=245, y0=410, x1=190, y1=470, lwd = 1, lty = "solid") 
segments(x0=245, y0=410, x1=240, y1=400, lwd = 1, lty = "solid") 
segments(x0=145, y0=425, x1=160, y1=460, lwd = 1, lty = "solid") 
segments(x0=190, y0=470, x1=160, y1=460, lwd = 1, lty = "solid") 

segments(x0=120, y0=580, x1=255, y1=430, lwd = 1, lty = "solid") 
segments(x0=255, y0=430, x1=290, y1=480, lwd = 1, lty = "solid") 
segments(x0=160, y0=630, x1=290, y1=480, lwd = 1, lty = "solid") 
segments(x0=160, y0=630, x1=120, y1=580, lwd = 1, lty = "solid") 

segments(x0=110, y0=570, x1=110, y1=590, lwd = 1, lty = "solid") 
segments(x0=150, y0=640, x1=110, y1=590, lwd = 1, lty = "solid") 
segments(x0=110, y0=570, x1=85, y1=575, lwd = 1, lty = "solid") 
segments(x0=110, y0=685, x1=85, y1=575, lwd = 1, lty = "solid") 
segments(x0=110, y0=685, x1=150, y1=640, lwd = 1, lty = "solid") 

segments(x0=23, y0=595, x1=65, y1=585, lwd = 1, lty = "solid") 
segments(x0=90, y0=695, x1=65, y1=585, lwd = 1, lty = "solid") 
segments(x0=90, y0=695, x1=50, y1=740, lwd = 1, lty = "solid") 
segments(x0=23, y0=690, x1=50, y1=740, lwd = 1, lty = "solid") 

segments(x0=23, y0=720, x1=40, y1=750, lwd = 1, lty = "solid") 
segments(x0=23, y0=765, x1=40, y1=750, lwd = 1, lty = "solid") 

segments(x0=23, y0=580, x1=65, y1=570, lwd = 1, lty = "solid") 
segments(x0=23, y0=460, x1=65, y1=570, lwd = 1, lty = "solid") 

segments(x0=23, y0=430, x1=30, y1=430, lwd = 1, lty = "solid") 
segments(x0=40, y0=425, x1=30, y1=430, lwd = 1, lty = "solid") 
segments(x0=40, y0=425, x1=50, y1=415, lwd = 1, lty = "solid") 
segments(x0=50, y0=365, x1=50, y1=415, lwd = 1, lty = "solid") 
segments(x0=40, y0=355, x1=50, y1=365, lwd = 1, lty = "solid") 
segments(x0=40, y0=355, x1=30, y1=350, lwd = 1, lty = "solid") 
segments(x0=23, y0=350, x1=30, y1=350, lwd = 1, lty = "solid") 

segments(x0=23, y0=785, x1=50, y1=765, lwd = 1, lty = "solid") 
segments(x0=110, y0=850, x1=50, y1=765, lwd = 1, lty = "solid") 
segments(x0=110, y0=850, x1=23, y1=910, lwd = 1, lty = "solid") 

segments(x0=23, y0=930, x1=60, y1=977, lwd = 1, lty = "solid") 

segments(x0=40, y0=925, x1=85, y1=977, lwd = 1, lty = "solid") 
segments(x0=75, y0=900, x1=135, y1=977, lwd = 1, lty = "solid") 
segments(x0=75, y0=900, x1=40, y1=925, lwd = 1, lty = "solid") 

segments(x0=85, y0=895, x1=150, y1=977, lwd = 1, lty = "solid") 
segments(x0=120, y0=875, x1=200, y1=977, lwd = 1, lty = "solid") 
segments(x0=120, y0=875, x1=85, y1=895, lwd = 1, lty = "solid") 

segments(x0=305, y0=500, x1=175, y1=650, lwd = 1, lty = "solid") 
segments(x0=195, y0=670, x1=175, y1=650, lwd = 1, lty = "solid")
segments(x0=190, y0=680, x1=170, y1=660, lwd = 1, lty = "solid")
segments(x0=65, y0=760, x1=170, y1=660, lwd = 1, lty = "solid")
segments(x0=65, y0=760, x1=110, y1=825, lwd = 1, lty = "solid")
segments(x0=195, y0=780, x1=110, y1=825, lwd = 1, lty = "solid")
segments(x0=195, y0=670, x1=190, y1=680, lwd = 1, lty = "solid")
segments(x0=305, y0=500, x1=375, y1=600, lwd = 1, lty = "solid") 
segments(x0=225, y0=700, x1=375, y1=600, lwd = 1, lty = "solid") 
segments(x0=225, y0=700, x1=195, y1=670, lwd = 1, lty = "solid") 
segments(x0=212, y0=690, x1=125, y1=760, lwd = 1, lty = "solid") 
segments(x0=125, y0=760, x1=135, y1=775, lwd = 1, lty = "solid") 
segments(x0=135, y0=775, x1=155, y1=765, lwd = 1, lty = "solid") 
segments(x0=155, y0=765, x1=145, y1=755, lwd = 1, lty = "solid") 
segments(x0=145, y0=755, x1=165, y1=740, lwd = 1, lty = "solid") 
segments(x0=195, y0=780, x1=165, y1=740, lwd = 1, lty = "solid") 

segments(x0=210, y0=710, x1=180, y1=730, lwd = 1, lty = "solid") 
segments(x0=210, y0=770, x1=180, y1=730, lwd = 1, lty = "solid") 
segments(x0=240, y0=750, x1=210, y1=710, lwd = 1, lty = "solid") 
segments(x0=240, y0=750, x1=210, y1=770, lwd = 1, lty = "solid") 

dev.off()


image_write(img, path = here::here("Original Plot Work", "Cholera Map", "Cholera Map.png"), format = "png")
