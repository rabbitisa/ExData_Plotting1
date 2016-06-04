#Project 1
household_power_consumption <- read.csv("~/data analysis/Project1/household_power_consumption.txt", sep=";")
#change date format
household_power_consumption$Date <-as.Date(household_power_consumption$Date, format = "%d/%m/%Y")
#subset the data
Data<-subset(household_power_consumption,subset=(Date>="2007-02-01"&Date<="2007-02-02"))
GlobalActivePower<-as.numeric(as.character(Data$Global_active_power))

#Plot 1
png("Plot1.png", width=480, height=480)
hist(GlobalActivePower, main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()


