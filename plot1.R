
source("main.R")

par(mfrow = c(1, 1))
hist(useful_data$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

dev.copy(png, file = "plot1.PNG") 
dev.off() 
