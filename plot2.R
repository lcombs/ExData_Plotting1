source("load_data.R")

# Plot 2:

png("plot2.png", 
    width = 480, 
    height = 480)

plot(household_data$Time, 
     household_data$Global_active_power, 
     type = "l", 
     ylab = "Global Active Power (kilowatts)",
     main = "", xlab = "")

dev.off()
