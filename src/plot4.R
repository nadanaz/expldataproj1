# setting up the data
# actually we do not need this if we run the scripts next to each other
# but we assume that we do not
datetime = paste(data$Date, data$Time)
datetime <- as.POSIXct(strptime(datetime, "%d/%m/%Y %H:%M:%S"))
Sys.setlocale("LC_TIME", "en_US.UTF-8")

# plot to png file
png(filename = "../figure/plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2, 2), mar=c(4, 4, 1, 1), oma=c(1.5, 1.5, 0.5, 0.5))
plot(datetime, data$Global_active_power, type="l", 
     ylab="Global Active Power", xlab="")
plot(datetime, data$Voltage, type="l", ylab="Vontage")
plot(datetime, data$Sub_metering_1, col="black", type="l", 
     xlab="", ylab="Energy sub metering")
lines(datetime, data$Sub_metering_2, col="red", type="l")
lines(datetime, data$Sub_metering_3, col="blue", type="l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), lwd=c(1, 1, 1), 
       col=c("black", "red", "blue"), bty="n", cex=1)
plot(datetime, data$Global_reactive_power, type="l", 
     ylab="Global_reactive_power")
dev.off()