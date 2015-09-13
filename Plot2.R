## I went ahead and deleted the entries from dates before 2/1/2007
## and after 2/2/2007 prior to starting this code. Then I saved wrote 
## it as a csv file.
read.csv("household_power_consumption.csv")->data
png("plot2.png")
Day1 <- data[data$Date=="1/2/2007",]
Day2 <- data[data$Date=="2/2/2007",]
 par(mfrow=c(1,2),oma=c(1,1,1,1))
 plot(Day1$Time, Day1$Global_active_power, xlab = "Time", 
      ylab = "Global Active Power (Kw)", main = "Thursday, Feb 1, 2007")
 lines(Day1$Time, Day1$Global_active_power)
 plot(Day2$Time, Day2$Global_active_power, xlab = "Time",
      ylab = "Global Active Power (Kw)",main = "Friday, Feb 2, 2007")
 lines(Day2$Time, Day2$Global_active_power)
 dev.off()