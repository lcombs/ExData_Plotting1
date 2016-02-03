# Plot 3:

source("load_data.R")

png("plot3.png", 
    width = 480, 
    height = 480)

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
       lwd = 2, 
       col = c("black", "red", "blue"))

dev.off()