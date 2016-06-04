getwd("C:\\Users\\bunny\\Documents\\data analysis\\Project1")
household_power_consumption <- read.csv("~/data analysis/Project1/household_power_consumption.txt", sep=";")
#change date format
household_power_consumption$Date <-as.Date(household_power_consumption$Date, format = "%d/%m/%Y")
#subset the data
Data<-subset(household_power_consumption,subset=(Date>="2007-02-01"&Date<="2007-02-02"))
DateTime<- paste(Data$Date,Data$Time)
Submetering1 <- as.numeric(as.character(Data$Sub_metering_1))
Submetering2 <- as.numeric(as.character(Data$Sub_metering_2))
Submetering3 <- as.numeric(as.character(Data$Sub_metering_3))
plot(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),Submetering1,type="l",xlab="",ylab="Energy sub metering")
lines(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),Submetering2,type="l",col="red")
lines(strptime(DateTime,"%Y-%m-%d %H:%M:%S"),Submetering3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("Black","red","Blue"),cex=0.75)

