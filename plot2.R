data <- read.csv(file="../household_power_consumption.txt", sep=';', stringsAsFactors = FALSE)
data <- data[data$Date == "1/2/2007"|data$Date == "2/2/2007",]

data$Global_active_power <- na.omit(as.double(data$Global_active_power))
data$allTime <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

png(filename="plot2.png",height=480, width=480)
plot(data$allTime, data$Global_active_power, xlab="", ylab ="Global Active Power (kilowatts)" ,type='l')
dev.off()