#source('loadData.R')
png(filename = 'plot1.png',width = 480,height = 480)
hist(tidyData$Global_active_power , breaks = 20,
     main = 'Global Active Power',
     xlab = 'Global Active Power (kilowatts)',col = 'red')
dev.off()