getwd('C:\\Users\\bunny\\Documents\\data analysis\\Project1')
household_power_consumption <- read.csv("~/data analysis/Project1/household_power_consumption.txt", sep=";")
#change date format
household_power_consumption$Date <-as.Date(household_power_consumption$Date, format = "%d/%m/%Y")
#subset the data
data<-subset(household_power_consumption,subset=(Date>="2007-02-01"&Date<="2007-02-02"))
GlobalActivePower <- as.numeric(data$Global_active_power)

#Plot 1
png("plot1.png", width=480, height=480)
hist(GlobalActivePower, main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()

