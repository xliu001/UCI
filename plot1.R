setwd("C:\\Users\\xliu001\\Desktop\\UCI HAR\\UCI power")
dataFile <- "./household_power_consumption.txt"
data<-read.table(dataFile,header=T, sep=";", stringsAsFactors=F, dec=".")
data2<-subset(data,Date %in% c("1/2/2007", "2/2/2007"))
names(data2)


library(ggplot2)
a<-as.numeric(data2$Global_active_power)
png("plot1.png", width=480, height=480)
hist(a,col="red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency",
     xlim=c(0,6), ylim=c(0,1200))
dev.off()


