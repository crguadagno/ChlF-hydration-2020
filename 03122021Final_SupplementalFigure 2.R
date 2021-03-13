windows(h=4,w=12)
#set total figure area, in inches (height, width)

par(mfrow=c(2,2), mar=c(0,0,0,0), oma=c(7,8,0.5,6))
#mfrow sets plot matrix (in this case 3 rows x 5 columns = 15 figs)
#mar sets margins for individual figures, starting at the bottom, going clockwise.
#oma sets margins for multi-figure, starting at the bottom, going clockwise
#units for mar/oma are lines.
#ticks inwards
par(tcl = 0.5)
setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<-read.csv(file="/Users/Lina/Desktop/ML/Photosynthetica 2020/DoubleError_Fs_RChlF_All.csv")
plot(data$RG_Proportion,data$Phi2,xlab=NA,las=1, xlim=c(1,0),ylim=c(-0.01,0.88),
     cex=4,pch=19,bg="gray",ylab=c(expression(paste(Phi [PSII]))),cex.axis=1.3,
     cex.lab=1.5,xaxt='n',
     col="gray")

axis(side=2,las=2,cex.axis=1.3)
mtext(c(expression(paste(Phi [PSII]))),side=2,cex=1.5, line=3)

arrows(data$RG_Proportion+data$RG_Proportion_SE, data$Phi2, data$RG_Proportion-data$RG_Proportion_SE, 
       data$Phi2, code=3, angle=90, length=0.1,col="black",lwd=2)
arrows(data$RG_Proportion, data$Phi2+data$Phi2_SE, data$RG_Proportion, 
       data$Phi2-data$Phi2_SE,  code=3, angle=90, length=0.1,col="black",lwd=2)
text(x = 0.03, y = 0.85, labels = 'A',cex=2,font=3)


setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<-read.csv(file="/Users/Lina/Desktop/ML/Photosynthetica 2020/DoubleError_Fs_RChlF_All.csv")
plot(data$RG_Proportion,data$FvP.FmP,xlab=NA,las=1,
     yaxt='n',xlim=c(1,0),ylim=c(0,0.88),
     cex=4,pch=19,bg="gray",cex.axis=1.3,cex.lab=1.5,xaxt='n',
    ylab=NA,las=1,
     col="gray")
axis(side=4,las=2,cex.axis=1.3)
mtext(c(expression(paste(F[v]*"'"/F[m]*"'"))),side=4,cex=1.5, line=4)

arrows(data$RG_Proportion+data$RG_Proportion_SE, data$FvP.FmP, data$RG_Proportion-data$RG_Proportion_SE, 
       data$FvP.FmP, code=3, angle=90, length=0.1,col="black",lwd=2)
arrows(data$RG_Proportion, data$FvP.FmP+data$FvP.FmP_SE, data$RG_Proportion, 
       data$FvP.FmP-data$FvP.FmP_SE,  code=3, angle=90, length=0.1,col="black",lwd=2)

text(x = 0.03, y = 0.85, labels = 'B',cex=2,font=3)


setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<-read.csv(file="/Users/Lina/Desktop/ML/Photosynthetica 2020/DoubleError_Fs_RChlF_All.csv")
plot(data$RG_Proportion,data$Fs,xlim=c(1,0),ylim=c(0,9000),
     cex=4,pch=19,bg="gray",ylab=c(expression(paste(F[s]))),cex.axis=1.3,
     xlab=c(expression(paste(italic("RChlF")))),cex.lab=2,las=1,
     col="gray")
axis(side=2,las=2,cex.axis=1.3)
mtext(c(expression(paste(F[s]))),side=2,cex=1.5, line=3.5)
axis(side=1,las=1,cex.axis=1.3)
mtext(c(expression(paste(RChlF))),side=1,cex=1.5, line=3)

arrows(data$RG_Proportion+data$RG_Proportion_SE, data$Fs, data$RG_Proportion-data$RG_Proportion_SE, 
       data$Fs, code=3, angle=90, length=0.1,col="black",lwd=2)
arrows(data$RG_Proportion, data$Fs+data$Fs_SE, data$RG_Proportion, 
       data$Fs-data$Fs_SE,  code=3, angle=90, length=0.1,col="black",lwd=2)


cor.test(data$Fs,data$RG_Proportion, method = c("pearson"))

abline(lm(data$Fs~data$RG_Proportion), col = "black",lwd=2,lty=3)

mylabel = bquote(italic(R) == .(format(0.62  , digits = 3)))
text(x = 0.80, y = 640, labels = mylabel,cex=2)

text(x = 0.03, y = 8600, labels = 'C',cex=2,font=3)


setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<-read.csv(file="/Users/Lina/Desktop/ML/Photosynthetica 2020/DoubleError_Fs_RChlF_All.csv")
plot(data$RG_Proportion,data$FmPrime,xlim=c(1,0),ylim=c(0,23000),
     cex=4,pch=19,bg="gray",yaxt='n',cex.axis=1.3,ylab=NA,
     xlab=c(expression(paste(italic("RChlF")))),cex.lab=2,las=1,
     col="gray")
axis(side=4,las=2,cex.axis=1.3)
mtext(c(expression(paste(F[m]*"'"))),side=4,cex=1.3, line=4.5)
axis(side=1,las=1,cex.axis=1.3)
mtext(c(expression(paste(RChlF))),side=1,cex=1.5, line=3)
arrows(data$RG_Proportion+data$RG_Proportion_SE, data$FmPrime, data$RG_Proportion-data$RG_Proportion_SE, 
       data$FmPrime, code=3, angle=90, length=0.1,col="black",lwd=2)
arrows(data$RG_Proportion, data$FmPrime+data$FmPrime_SE, data$RG_Proportion, 
       data$FmPrime-data$FmPrime_SE,  code=3, angle=90, length=0.1,col="black",lwd=2)

cor.test(data$FmPrime,data$RG_Proportion, method = c("pearson"))

abline(lm(data$FmPrime~data$RG_Proportion), col = "black",lwd=2,lty=3)
mylabel = bquote(italic(R) == .(format(0.52, digits =3 )))
text(x = 0.8, y = 1500, labels = mylabel,cex=2)

text(x = 0.03, y = 21900, labels = 'D',cex=2,font=3)





