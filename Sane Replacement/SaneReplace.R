library(dplyr)
library(ggplot2)
#install.packages("fmsb")
library(fmsb)
library(psycho)
library(readxl)

df=read_excel("SaneReplace.xlsx")
players=as.character(df$Name)
features=colnames(df)[2:ncol(df)]
df1=df[,-1]
n=ncol(df1)
test= rbind(rep(27,n),rep(0,n),df1)
test=as.data.frame(SaneReplace1)

colors_border=c("red","blue","green","yellow")
colors_in=alpha(colors_border,0.2)
colors_in[1]=alpha("red",0.1)
colors_border=alpha(colors_border,0.4)

oy<-as.data.frame(test[1:5,])
oy<-oy[-c(2,3),]
gr<-as.data.frame(test[2:5,])
gr <- gr[-c(2), ]
ra<-as.data.frame(test[3:5,])
radarchart(oy,axistype=0 , maxmin=F,    #custom polygon
           pcol=colors_border , pfcol=colors_in[1:2] , plwd=4 , plty=1,
           #custom the grid
          # cglcol="grey", cglty=1, axislabcol="black", cglwd=0.8, 
           #custom labels
           vlcex=0.8 ,title="Performance Radar of Rashica")
legend(x=1.1, y=0.8, legend = players, bty = "n", pch=20 , col=colors_in , text.col = "blue", cex=1.2, pt.cex=3)
