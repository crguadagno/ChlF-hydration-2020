windows(h=4,w=12)
#set total figure area, in inches (height, width)

par(mfrow=c(2,1), mar=c(5,5,0.1,1), oma=c(0.1,1,1,1))
#mfrow sets plot matrix (in this case 3 rows x 5 columns = 15 figs)
#mar sets margins for individual figures, starting at the bottom, going clockwise.
#oma sets margins for multi-figure, starting at the bottom, going clockwise
#units for mar/oma are lines.
plot()
setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<- read.csv(file= "SM_FvFm_RChlF_LWP.csv",header = TRUE)
plot(x=data$LW_FBM,y = data$RG_Proportion, ann=FALSE,xlim = c(0,0.92),ylim = c(0,1),las=1,
     bg="gray", col=c('black'),cex=2.2,cex.axis=1.5,pch=c(data$Symbol))

res=lm(data$RG_Proportion~data$LW_FBM)
summary(res)
abline(lm(data$RG_Proportion~data$LW_FBM), col = "black",lwd=2,lty=3)

mylabel = bquote(italic(R)^2 == .(format(0.804, digits = 3)))
text(x = 0.65, y = 0.13, labels = mylabel,cex=2)


title(ylab=c(expression(paste("RChlF"))),cex.lab=1.5,line=3.5)

title(xlab=c("LWC (g)"),cex.lab=1.5,line=2.5)

legend("bottomright",c( "Oilseed","Turnip","Sage","Pine","Aspen"),pt.cex=2,
       pch=c(21,22,23,24,25),pt.bg =c("gray"),bty='o',cex=0.8,
       x.intersp = 1,ncol=1
    )	

text(x = 0.01, y = 0.98, labels = 'A',cex=1.8,font=3)


plot()
setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<- read.csv(file= "RWC_SM_FvFm_RChlF_LWP.csv",header = TRUE)
plot(x=data$RWC,y = data$RG_Proportion, ann=FALSE,xlim = c(0,100),ylim = c(0,0.8),las=1,
     bg="gray", col=c('black'),cex=2.2,cex.axis=1.5,pch=c(data$Symbol))

res=lm(data$RG_Proportion~data$RWC)
summary(res)

title(ylab=c(expression(paste("RChlF"))),cex.lab=1.5,line=3.5)

title(xlab=c("RWC (%)"),cex.lab=1.5,line=2.5)                                    

text(x = 0.1, y = 0.78, labels = 'B',cex=2,font=3)

abline(lm(data$RG_Proportion~data$RWC), col = "black",lwd=2,lty=3)

mylabel = bquote(italic(R)^2 == .(format(0.848, digits = 3)))
text(x = 68, y = 0.13, labels = mylabel,cex=2)
legend("bottomright",c( "Sage","Pine"),pt.cex=2,
       pch=c(23,24),pt.bg =c("gray"),bty='o',cex=1,
       x.intersp = 1,ncol=1)	