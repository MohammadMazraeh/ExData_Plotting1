#source('loadData.R')
png(filename = 'plot3.png',width = 480,height = 480)
x <- tidyData[!is.na(tidyData$Global_active_power) & !is.na(tidyData$Date),]
with(x, plot(x = Time, y = Sub_metering_1, type = 'n', ylab = 'Energy sub metering'))
with(x, lines(x = Time, y = Sub_metering_1, col = 'black'))
with(x, lines(x = Time, y = Sub_metering_2, col = 'red'))
with(x, lines(x = Time, y = Sub_metering_3, col = 'blue'))
dev.off()
