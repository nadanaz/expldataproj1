# plot to png file
source("read_data.R")
png(filename = "../figure/plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, col="red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()