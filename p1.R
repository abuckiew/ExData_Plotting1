data <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)
data$DateTime <- strptime(paste(data$Date, data$Time),"%d/%m/%Y %H:%M:%S")
data <- subset(data, DateTime >= strptime("2007-02-01 00:00:00", "%Y-%m-%d %H:%M:%S") & DateTime < strptime("2007-02-03 00:00:00", "%Y-%m-%d %H:%M:%S"))

hist(as.numeric(data$Global_active_power), main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png, file = "p1.png")
dev.off()