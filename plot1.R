data_file <- "household_power_consumption.txt"
all_data <- read.table(data_file, header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
sub_data <- subset(all_data, Date == "1/2/2007" | Date == "2/2/2007")

png("plot1.png", width = 480, height = 480)

hist(sub_data$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency")

dev.off()