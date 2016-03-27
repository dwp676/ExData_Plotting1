#Exploratory Data Analysis Assignment #1 Plot 2

#Read file into R
powerreading <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")

#Subset by dates 2/1/2007 and 2/2/2007
powersubset <-subset(powerreading, Date =="1/2/2007" | Date =="2/2/2007")

#Plot 2

powersubset$timestamp <- paste(powersubset$Date, powersubset$Time)

png(filename = "plot2.png")
plot(strptime(powersubset$timestamp,"%d/%m/%Y %H:%M:%S"), 
              powersubset$Global_active_power, type = "l", xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()