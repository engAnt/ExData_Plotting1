
source("main.R")

par(mfrow = c(1, 1))
with(useful_data, plot(Time, Global_active_power, 
                       main = "", xlab = "",
                       ylab = "Global Active Power (kilowatts)", type = "l"))

dev.copy(png, file = "plot2.PNG") 
dev.off() 


