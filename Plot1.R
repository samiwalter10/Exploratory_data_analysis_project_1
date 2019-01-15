# Course 4: Exploratory Data Analysis

setwd("C:/Users/samantha.walter/Documents/Data Science Specialization/Course 4")

# load the data
data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

# Subset the data
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Plot 1
hist(data$Global_active_power, main = "Global Active Power",xlab = "Global Active Power (kilowatts)",col = "Red")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()

