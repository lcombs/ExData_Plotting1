# Plot 4:

source("load_data.R")

png("plot4.png", 
    width = 480, 
    height = 480)

par(mfrow = c(2, 2))

# 1

plot(household_data$Time, 
     household_data$Global_active_power, 
     type = "l", 
     ylab = "Global Active Power (kilowatts)",
     main = "", xlab = "")

# 2

plot(household_data$Time, 
     household_data$Voltage, 
     type = "l", 
     ylab = "Voltage",
     main = "", xlab = "datetime")

# 3

plot(household_data$Time,
     household_data$Sub_metering_1, 
     type = "l",
     ylab = "Energy sub metering",
     main = "", xlab = "")

lines(household_data$Time,
      household_data$Sub_metering_2, 
      type = "l",
      col = "red")

lines(household_data$Time,
      household_data$Sub_metering_3, 
      type = "l",
      col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1, 
       bty = "n",
       col = c("black", "red", "blue"))

# 4

plot(household_data$Time, 
     household_data$Global_reactive_power, 
     type = "l",
     ylab = "Global_reactive_power",
     main = "", xlab = "datetime")

dev.off()