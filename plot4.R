getwd("C:\\Users\\bunny\\Documents\\data analysis\\Project1")
household_power_consumption <- read.csv("~/data analysis/Project1/household_power_consumption.txt", sep=";")
#change date format
household_power_consumption$Date <-as.Date(household_power_consumption$Date, format = "%d/%m/%Y")
#subset the data
Data<-subset(household_power_consumption,subset=(Date>="2007-02-01"&Date<="2007-02-02"))
DateTime<- paste(Data$Date,Data$Time)
GlobalActivePower <-as.numeric(as.character(Data$Global_active_power))
GlobalReactivePower <-as.numeric(as.character(Data$Global_reactive_power))
Voltage <- as.numeric(as.character(Data$Voltage))
Submetering1 <- as.numeric(as.character(Data$Sub_metering_1))
Submetering2 <- as.numeric(as.character(Data$Sub_metering_2))
Submetering3 <- as.numeric(as.character(Data$Sub_metering_3))
#png("Plot4.png",width=480,height=480)
par(mfcol=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
#plot1
plot(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),GlobalActivePower,type = "l",xlab="",ylab="Global Active Power")

#plot2
plot(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),Submetering1,type="l",xlab="",ylab="Energy sub metering")
lines(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),Submetering2,type="l",col="red")
lines(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),Submetering3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("Black","red","Blue"),cex=0.3)

#plot3
plot(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),Voltage,type = "l",xlab="datetime",ylab="Voltage")

#plot4
plot(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),GlobalReactivePower,type = "l",xlab="",ylab="Global_reactive_power")

