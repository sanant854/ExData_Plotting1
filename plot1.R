
png(file="plot1.png",width=480,height=480)

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data$Date<-dmy(data$Data)

subset<-y[y$Date=="2007-02-01" | y$Date=="2007-02-02",]
hist(as.numeric(subset$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency")

dev.off()