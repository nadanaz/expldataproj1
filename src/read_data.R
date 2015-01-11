#reading data
rawdata = read.csv("../data/household_power_consumption.txt", 
                   header=TRUE, sep=";", stringsAsFactors=FALSE, 
                   colClasses=c("character", "character", "numeric", 
                                "numeric", "numeric", "numeric", 
                                "numeric", "numeric", "numeric"), 
                   na.strings=c("?"))
criteria = rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007"
data = rawdata[criteria,]