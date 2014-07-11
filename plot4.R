library(data.table)
dt<-fread("household_power_consumption.txt")
dt<-subset(dt,dt$Date %in% c("1/2/2007","2/2/2007"))

par(mfrow=c(2,2))
with(dt,{

  plot(posix,as.numeric(Global_active_power),type="l",xlab="",ylab="Global Active Power",main="")
  
  plot(posix,as.numeric(Voltage),type="l",xlab="datetime",ylab="Voltage",main="")

  plot(posix,as.numeric(Sub_metering_1),type="l",xlab="",ylab="Energy sub metering",main="")
  with(subset(dt),points(posix,as.numeric(Sub_metering_2),type="l",col="red"))
  with(subset(dt),points(posix,as.numeric(Sub_metering_3),type="l",col="blue"))
  legend("topright",lty="solid",cex = 1,xjust=1 bty="n",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

  plot(posix,as.numeric(Global_reactive_power),type="l",xlab="datetime",ylab="Global_reactive_power",main="")
})

dev.copy(png,file="plot4.png")
dev.off()

