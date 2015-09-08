source('loadData.R')
png(filename = 'plot3.png',width = 480,height = 480)
x <- tidyData[!is.na(tidyData$Global_active_power) & !is.na(tidyData$Date),]
with(x, plot(x = Time, y = Sub_metering_1, type = 'n', ylab = 'Energy sub metering', xlab = ''))
with(x, lines(x = Time, y = Sub_metering_1, col = 'black'))
with(x, lines(x = Time, y = Sub_metering_2, col = 'red'))
with(x, lines(x = Time, y = Sub_metering_3, col = 'blue'))
legend('topright', legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c('black','red','blue') , lty = 1)
dev.off()
