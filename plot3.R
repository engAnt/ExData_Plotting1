
source("main.R")

par(mfrow = c(1, 1))
with(useful_data, plot(Time, Sub_metering_1, 
                       main = "", xlab = "",
                       ylab = "Energy sub metering", type = "l"))
with(useful_data, lines(Time, Sub_metering_2, col = "red"))
with(useful_data, lines(Time, Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd = 2, lty = 1, cex = 0.75,
       col = c("black", "blue", "red"))

dev.copy(png, file = "plot3.PNG") 
dev.off() 


