#Exploratory Data Analysis Assignment #1 Plot 1

#Read file into R
powerreading <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")

#Subset by dates 2/1/2007 and 2/2/2007
powersubset <-subset(powerreading, Date =="1/2/2007" | Date =="2/2/2007")

#Create Histogram for Global Active Power
png(filename = "plot1.png")
hist(powersubset$Global_active_power, col = "red", 
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()