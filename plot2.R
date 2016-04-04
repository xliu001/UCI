setwd("C:\\Users\\xliu001\\Desktop\\UCI HAR\\UCI power")
dataFile <- "./household_power_consumption.txt"
data<-read.table(dataFile,header=T, sep=";", stringsAsFactors=F, dec=".")
data2<-subset(data,Date %in% c("1/2/2007", "2/2/2007"))
names(data2)

x=strptime(paste(data2$Date,data2$Time, sep=" "),"%d/%m/%Y %H:%M:%S") #create new variable for the x axis
a<-as.numeric(data2$Global_active_power) #convert the categorical to the numeric variable

png("plot2.png", width=480, height=480)
plot(x,a,type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


