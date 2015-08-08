#source('loadData.R')
png(filename = 'plot2.png',width = 480,height = 480)
x <- tidyData[!is.na(tidyData$Global_active_power) & !is.na(tidyData$Date),]
plot(x$Time, x$Global_active_power, type = 'l', ylab = 'Global Active Power (kilowatts)')
dev.off()
