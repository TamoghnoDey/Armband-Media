library(readxl)
library(scales)
library(fmsb)
library(ggplot2)
library(ggrepel)
library(psycho)
library(dplyr)

sterling<-man_city_wingers[-c(2),]

radarchart(sterling, maxmin=F,    #custom polygon
           pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
           #custom the grid
           # cglcol="grey", cglty=1, axislabcol="black", cglwd=0.8, 
           #custom labels
           vlcex=0.8,title="Ferran Torres vs Raheem Sterling" )
legend(x=-2.5,y=1.4, legend = "Ferran Torres", col=colors_border,pch = 20,bty = "n", cex = 1, pt.cex = 2, text.font = 2, text.width = 4.5, seg.len = 0.5, ncol = 2)
legend(x=1.1,y=1.4, legend = "Raheem Sterling", col=colors_border[2],pch = 20,bty = "n", cex = 1, pt.cex = 2, text.font = 2, text.width = 4.5, seg.len = 0.5, ncol = 2)

colors_border = c(alpha("red",0.7), alpha("green4",0.8),alpha("grey",0.1),alpha("grey",0.1))
colors_in =  c(alpha("red",0.6), alpha("green4",0.5),alpha("white",0.1),alpha("white",0.1))