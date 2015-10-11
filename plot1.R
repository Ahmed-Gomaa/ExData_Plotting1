setwd("E:/")

HouseHoldPowerConsumption <- read.csv("E:/household_power_consumption.txt", sep=";")

View(HouseHoldPowerConsumption)

HouseHoldPowerConsumption$Date <- as.Date(HouseHoldPowerConsumption$Date, format="%d/%m/%Y")

HouseHoldPowerConsumption_New <- subset(HouseHoldPowerConsumption, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

View(HouseHoldPowerConsumption_New)

datetime <- paste(as.Date(HouseHoldPowerConsumption_New$Date), HouseHoldPowerConsumption_New$Time)

HouseHoldPowerConsumption_New$Datetime <- as.POSIXct(datetime)

png("plot1.png", width=480, height=480)

hist(as.numeric(HouseHoldPowerConsumption_New$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()
