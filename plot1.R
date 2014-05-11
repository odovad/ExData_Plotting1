data <- read.csv(file="../household_power_consumption.txt", sep=';', stringsAsFactors = FALSE)
data <- data[data$Date == "1/2/2007"|data$Date == "2/2/2007",]
data$Global_active_power <- na.omit(as.double(data$Global_active_power))
png(filename="plot1.png",height=480, width=480)
hist(data$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()