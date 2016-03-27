#Exploratory Data Analysis Assignment #1 Plot 3

#Read file into R
powerreading <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")

#Subset by dates 2/1/2007 and 2/2/2007
powersubset <-subset(powerreading, Date =="1/2/2007" | Date =="2/2/2007")

#Plot 3

powersubset$timestamp <- paste(powersubset$Date, powersubset$Time)

png(filename = "plot3.png")

plot(strptime(powersubset$timestamp,"%d/%m/%Y %H:%M:%S"), powersubset$Sub_metering_1, type = "l", xlab = "",ylab = "Energy sub metering")
lines(strptime(powersubset$timestamp,"%d/%m/%Y %H:%M:%S"), powersubset$Sub_metering_2, type = "l", col = "red")
lines(strptime(powersubset$timestamp,"%d/%m/%Y %H:%M:%S"), powersubset$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()