windows(h=4,w=12)
#set total figure area, in inches (height, width)

par(mfrow=c(2,1), mar=c(5,5,0.1,1), oma=c(0.1,1,1,1))
#mfrow sets plot matrix (in this case 3 rows x 5 columns = 15 figs)
#mar sets margins for individual figures, starting at the bottom, going clockwise.
#oma sets margins for multi-figure, starting at the bottom, going clockwise
#units for mar/oma are lines.
plot()
setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<- read.csv(file= "VWC_FvFm_RChlF_LWP.csv",header = TRUE)
plot(x=data$VWC,y = data$RG_Proportion, ann=FALSE,xlim = c(0,25),ylim = c(0,1),las=1,
     bg="gray", col=c('black'),cex=2.2,cex.axis=1.5,pch=c(data$Symbol))

res=lm(data$RG_Proportion~data$VWC)
summary(res)

title(ylab=c(expression(paste("RChlF"))),cex.lab=1.5,line=3.5)

title(xlab=c("VWC (%)"),cex.lab=1.5,line=2.5)

legend("bottomright",c( "Oilseed","Turnip","Sage","Pine","Aspen"),pt.cex=2,
       pch=c(21,22,23,24,25),pt.bg =c("gray"),bty='o',cex=1,
       x.intersp = 1,ncol=1)	
res=lm(data$RG_Proportion~data$VWC)
summary(res)
abline(lm(data$RG_Proportion~data$VWC), col = "black",lwd=2,lty=3)

mylabel = bquote(italic(R)^2 == .(format(0.437, digits = 3)))
text(x = 16, y = 0.07, labels = mylabel,cex=2)

text(x = 0.2, y = 0.98, labels = 'A',cex=1.8,font=3)


plot()
setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<- read.csv(file= "VWC_FvFm_RChlF_LWP.csv",header = TRUE)
plot(x=data$LWP,y = data$RG_Proportion, ann=FALSE,xlim = c(-10.2,0),ylim = c(0,1),las=1,
     bg="gray", col=c('black'),cex=2.2,cex.axis=1.5,pch=c(data$Symbol))

res=lm(data$RG_Proportion~data$VWC)
summary(res)

title(ylab=c(expression(paste("RChlF"))),cex.lab=1.5,line=3.5)

title(xlab=c(expression(paste(Psi [L], "(MPa)"))),cex.lab=1.5,line=2.5)                                    

text(x = -10, y = 0.98, labels = 'B',cex=1.8,font=3)

res=lm(data$RG_Proportion~data$LWP)
summary(res)
abline(lm(data$RG_Proportion~data$LWP), col = "black",lwd=2,lty=3)

mylabel = bquote(italic(R)^2 == .(format(0.561, digits = 3)))
text(x = -5, y = 0.8, labels = mylabel,cex=2)


