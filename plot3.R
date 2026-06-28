data_file <- "household_power_consumption.txt"
all_data <- read.table(data_file, header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
sub_data <- subset(all_data, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480)

plot(datetime, sub_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
lines(datetime, sub_data$Sub_metering_2, col = "red")
lines(datetime, sub_data$Sub_metering_3, col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = 1)

dev.off()