# pch: plotting symbol
# lty: the line type 
# lwd: line width
# col: plotting color specified as a number color() gives vector
# of color

library(datasets)
with(airquality,plot(Wind,Ozone, main="Ozone and Wind in NYC",type='n'))
with(subset(airquality,Month==5),points(Wind,Ozone,col="blue"))
with(subset(airquality,Month!=5),points(Wind,Ozone,col="red"))
airquality<-transform(airquality,Month=factor(Month))
boxplot(Ozone~Month,airquality,xlab="Month",ylab="Ozone(ppb)")


# Below is print multiple plot
par(mfrow=c(1,2))
with(airquality,{
  plot(Wind,Ozone,main="Ozone and Wind",col="blue")
  plot(Solar.R,Ozone,main="Ozone and Solar Radiation",col="red")
})