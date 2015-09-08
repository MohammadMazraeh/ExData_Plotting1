source('loadData.R')
png(filename = 'plot4.png',width = 480,height = 480)
x <- tidyData[!is.na(tidyData$Global_active_power) & !is.na(tidyData$Date),]
par(mfrow = c(2,2))
with(x,{
      plot(Time, Global_active_power, type = 'l', ylab = 'Global Active Power' , xlab = '')
      plot(Time, Voltage, type = 'l', ylab = 'Voltage',xlab = 'datetime')
      with(x, plot(x = Time, y = Sub_metering_1, type = 'n',  xlab = '', ylab = 'Energy sub metering'))
      with(x, lines(x = Time, y = Sub_metering_1, col = 'black'))
      with(x, lines(x = Time, y = Sub_metering_2, col = 'red'))
      with(x, lines(x = Time, y = Sub_metering_3, col = 'blue'))
      plot(Time, Global_reactive_power, type = 'l', xlab = 'datetime')
      
})


dev.off()
