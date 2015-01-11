# setting up the data
# actually we do not need this if we run the scripts next to each other
# but we assume that we do not
datetime = paste(data$Date, data$Time)
datetime <- as.POSIXct(strptime(datetime, "%d/%m/%Y %H:%M:%S"))
Sys.setlocale("LC_TIME", "en_US.UTF-8")

# plot to png file
png(filename = "../figure/plot3.png", width = 480, height = 480, units = "px")
plot(datetime, data$Sub_metering_1, col="black", type="l", 
     xlab="", ylab="Energy sub metering")
lines(datetime, data$Sub_metering_2, col="red", type="l")
lines(datetime, data$Sub_metering_3, col="blue", type="l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), lwd=c(1, 1, 1), col=c("black", "red", "blue"))
dev.off()