# Clear Workspace variables
rm(list = ls())

numberofRow <- 0
data  <- read.table(file = 'household_power_consumption.txt',
                    sep = ';',header = TRUE, nrow = 100)
classes <- sapply(data, class)

data  <- read.table(file = 'household_power_consumption.txt',
                    colClasses = classes,sep = ';',header = TRUE, 
                    nrow = numberofRow,na.strings = '?')

tmp <- paste(data$Date, data$Time)
data$Date <- as.Date(tmp,format = '%d/%m/%Y %H:%M:%S')
data$Time <- strptime(tmp, format = '%d/%m/%Y %H:%M:%S')
startDate <- as.Date('2007/02/01','%Y/%m/%d')
endDate <- as.Date('2007/02/02','%Y/%m/%d')
tidyData <- data[data$Date >= startDate & data$Date <= endDate,]