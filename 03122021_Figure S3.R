windows(h=4,w=12)
#set total figure area, in inches (height, width)

par(mfrow=c(2,1), mar=c(3.9,3.7,0.1,0.01), oma=c(0.1,0.1,0.2,1,1))
#mfrow sets plot matrix (in this case 3 rows x 5 columns = 15 figs)
#mar sets margins for individual figures, starting at the bottom, going clockwise.
#oma sets margins for multi-figure, starting at the bottom, going clockwise
#units for mar/oma are lines.
plot()
setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<- read.csv(file= "Tripleleaves_Fv'_WW.csv",header = TRUE)
plot(x=data$SPAD_530,y = data$RG_Proportion, ann=FALSE,ylim = c(0.45,1.2), 
     pch=c(data$Capital),col=("black"),las=1,
     xlim = c(-6,100),cex=1,cex.axis=1.5)

legend("topleft",c( "ilseed","urnip","age","ine","spen"),cex=1.1,
       pch=c("O","T","S","P","A"),col=('black'),
       pt.bg = c("black"),bty="n",pt.cex = 1.2,x.intersp = 0.25,ncol=2,
       text.font=1)

abline(h=0.73, col = "black",lwd=3,lty=2)
text(x = 99.99, y = 1.18, labels = 'A',cex=1.8,font=3)


title(ylab=c(expression(paste("RChlF"))),cex.lab=1.5,line=2.5)

title(xlab="SPAD (530 nm)",cex.lab=1.5,line=2.5)

setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<- read.csv(file= "Tripleleaves_Fv'_WW.csv",header = TRUE)
plot(x=data$absorbance_850,y = data$RG_Proportion, ann=FALSE,ylim = c(0.45,1), 
     pch=c(data$Capital),col=("black"),las=1,
     xlim = c(0,1.5),cex=1,cex.axis=1.5)


title(ylab=c(expression(paste("RChlF"))),cex.lab=1.5,line=2.5)

title(xlab="Absorbance (850nm)",cex.lab=1.5,line=2.5)

abline(h=0.73, col = "black",lwd=3,lty=2)
text(x = 1.49, y = 0.98, labels = 'B',cex=1.8,font=3)

