
### make sure ./data directory exists...
# extracted *.txt data file resides within it
if (!file.exists("data")) { 
     stop("No /data directory found!")
}

tmp <- read.table(file = "./data/household_power_consumption.txt", 
                  sep = ";", header = TRUE, na.strings = "?", nrows = 70000,
                  colClasses = c("character", "character", "numeric", 
                                 "numeric", "numeric", "numeric", "numeric", 
                                 "numeric", "numeric"))

#rows 66637 to 69516

useful_data <- tmp[66637:69516, ]
useful_data$Time <- strptime(paste(useful_data$Date, useful_data$Time), "%d/%m/%Y %H:%M:%S")
useful_data$Date <- as.Date(useful_data$Date, "%d/%m/%Y")

