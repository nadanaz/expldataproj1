# setting up the data
# actually we do not need this if we run the scripts next to each other
# but we assume that we do not
datetime = paste(data$Date, data$Time)
datetime <- as.POSIXct(strptime(datetime, "%d/%m/%Y %H:%M:%S"))
Sys.setlocale("LC_TIME", "en_US.UTF-8")

# plot to png file
png(filename = "../figure/plot2.png", width = 480, height = 480, units = "px")
plot(datetime, data$Global_active_power, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
