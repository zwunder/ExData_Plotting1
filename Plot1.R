## I went ahead and deleted the entries from dates before 2/1/2007
## and after 2/2/2007 prior to starting this code. Then I saved wrote 
## it as a csv file.
read.csv("household_power_consumption.csv")->data
png("plot1.png")
hist(data$Global_active_power, xlab="Global Active Power (Kw)",
       col="purple",main="Distribution of Global Active Power")
dev.off()