windows(h=4,w=12)
#set total figure area, in inches (height, width)

par(mfrow=c(1,1), mar=c(5,5,0.1,1), oma=c(0.1,1,1,1))
#mfrow sets plot matrix (in this case 3 rows x 5 columns = 15 figs)
#mar sets margins for individual figures, starting at the bottom, going clockwise.
#oma sets margins for multi-figure, starting at the bottom, going clockwise
#units for mar/oma are lines.
plot()
setwd("/Users/Lina/Desktop/ML/Photosynthetica 2020")
data<- read.csv(file= "PAR_all.csv",header = TRUE)
plot(x=data$Light.Intensity..PAR.,y = data$RG_Proportion, ann=FALSE,xlim = c(0,1600),ylim = c(0,1),
     bg="gray", col=c('black'),cex=2.2,cex.axis=1.5)



title(ylab=c(expression(paste("RChlF"))),cex.lab=2,line=3.5)

title(xlab=c("PAR"),cex.lab=2,line=3.5)


