setwd("C:\\Users\\xliu001\\Desktop\\UCI HAR\\UCI power")
dataFile <- "./household_power_consumption.txt"
data<-read.table(dataFile,header=T, sep=";", stringsAsFactors=F, dec=".")
data2<-subset(data,Date %in% c("1/2/2007", "2/2/2007"))
names(data2)

x=strptime(paste(data2$Date,data2$Time, sep=" "),"%d/%m/%Y %H:%M:%S") #create new variable for the x axis
y1<-as.numeric(data2$Sub_metering_1) #convert the categorical to the numeric variable
y2<-as.numeric(data2$Sub_metering_2) #convert the categorical to the numeric variable
y3<-as.numeric(data2$Sub_metering_3) #convert the categorical to the numeric variable

png("plot3.png", width=480, height=480)
plot(x,y1,type="l", xlab="", ylab="Energy sub metering")
  lines(x,y2,col="red")
  lines(x,y3,col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2, col=c("black","red","blue"))
dev.off()


