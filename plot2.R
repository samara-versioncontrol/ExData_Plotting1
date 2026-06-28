data_file <- "household_power_consumption.txt"
all_data <- read.table(data_file, header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
sub_data <- subset(all_data, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)

plot(datetime, sub_data$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")

dev.off()