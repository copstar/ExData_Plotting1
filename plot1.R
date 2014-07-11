library(data.table)
dt<-fread("household_power_consumption.txt",)
dt$Date<-as.Date(dt$Date,"%d/%m/20%y")
dt<-dt[Date=="2007-02-01" | Date=="2007-02-02"]
with(dt, hist(as.numeric(Global_active_power),xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power"))
dev.copy(png,file="plot1.png")
dev.off()

     
     





     







   







