library(ggplot2)

#https://docs.google.com/presentation/d/1HQkkZU9aho9ZDgUHnCisjghexcrMFCvgtaFYevR1_9Q/edit#slide=id.g1f6c30b6369_0_118

library(ggplot2)
library(ggpol)
library(magick)
library(ggpubr)
library(ggnewscale)


bt <- data.frame(
  parties = factor(c("CDU", "CSU", "AfD", "FDP", "SPD", 
                     "Linke", "Gruene", "Fraktionslos"),
                   levels = c("CDU", "CSU", "AfD", "FDP", "SPD", 
                              "Linke", "Gruene", "Fraktionslos")),
  seats   = c(200, 46, 92, 80, 153, 69, 67, 2),
  colors  = c("black", "blue", "lightblue", "yellow", "red",
                     "purple", "green", "grey"),
  blank  = c("white", "white", "white", "white", "white",
                                        "white", "white", "white"),
                     stringsAsFactors = FALSE)


graph <- ggplot(bt) + 
  geom_arcbar(aes(shares = seats, r0 = -5, r1 = -15, color=parties, fill = parties), sep=0) + 
  geom_arcbar(aes(shares = seats, r0 = -3.5, r1 = -3, fill = parties), sep=0) + 
  geom_arcbar(aes(shares = seats, r0 = -1, r1 = -3, fill = parties), sep=0) + 
  scale_fill_manual(values = bt$colors) +
  new_scale_fill() +
  
  geom_arcbar(aes(shares = seats, r0 = -1, r1 = -3, fill = parties), sep=0) + 
  scale_fill_manual(values = bt$blank) +
  
  scale_color_manual(values = bt$colors) +
  coord_flip(xlim = NULL, ylim = NULL, expand = TRUE) +
  theme(legend.position = "none") 


gap <- ggplot() + theme_void()


png(here::here("Original Plot Work", "Domestication of Animals", "Domestication of Animals.png"),width=500,height=900)

print(ggarrange(gap,
                ggarrange(gap, graph, gap, ncol=3, widths = c(.3, 1, .05)), gap, nrow=3, heights =c(.15, 1, .25)))

dev.off()


