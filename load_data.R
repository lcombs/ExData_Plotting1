library(magrittr)

# load data

household_data <- 
        read.table("household_power_consumption.txt", 
                   header = TRUE, 
                   sep = ";", 
                   colClasses = c(rep("character", 2), 
                                  rep("numeric", 7)),
                   na = "?") 

household_data$Time <- 
        strptime(paste(household_data$Date, household_data$Time), 
                 format = "%d/%m/%Y %H:%M:%S")

household_data$Date <- 
        as.Date(household_data$Date, 
                format = "%d/%m/%Y")

dates <- 
        as.Date(c("2007-02-01", "2007-02-02"), 
                format = "%Y-%m-%d")   

household_data <- 
        household_data[which(household_data$Date %in% 
                                     dates), ] 
