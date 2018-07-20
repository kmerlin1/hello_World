household<- read.table("household_power_consumption.txt",header = TRUE, sep = ";")
 household$Date <- factor(household$Date)
household$Date<- as.Date(household$Date, format = "%d/%m/%Y")
library(chron)
household$Time<-times(household$Time)
 household1 <- subset(household, Date>="2007-02-01" &  Date <= "2007-02-02")
 household1$Global_active_power<-as.numeric(levels(household1$Global_active_powe)[household1$Global_active_powe])
> png("plot1.png", width = 480, height = 480)
> hist(household1$Global_active_power, main="Global Active Power", xlab="Global Active Power (killowatts)", col="red",
       +      xlim=c(0,6),
       +      ylim=c(0,1200),
       +      las=1)
 dev.off()                                                              