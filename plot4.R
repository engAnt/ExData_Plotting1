
source("main.R")

par(mfrow = c(2, 2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(useful_data, {
     plot(Time, Global_active_power, main = "", xlab = "",
          ylab = "Global Active Power (kilowatts)", type = "l")
     
     plot(Time, Voltage, 
          main = "", xlab = "datetime",
          ylab = "Voltage", type = "l")
     
     plot(Time, Sub_metering_1, main = "", xlab = "", ylab = "Energy sub metering", type = "l")
     lines(Time, Sub_metering_2, col = "red")
     lines(Time, Sub_metering_3, col = "blue")
     legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = 1, col = c("black", "blue", "red"), cex = 0.8, bty = "n")
     
     plot(Time, Global_reactive_power, main = "", xlab = "datetime",
          ylab = "Global_reactive_power", type = "l")
})

dev.copy(png, file = "plot4.PNG") 
dev.off() 


