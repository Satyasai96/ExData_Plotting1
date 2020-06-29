#install.packages("grDevices")
#library(lattice)
getwd()
x<- read.delim("C:/Users/admin/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt",header = T,sep =';',stringsAsFactors = FALSE)
x1 <- subset(x,Date == '1/1/2007')
x1 <- rbind(x1,subset(x,Date=='2/2/2007'))
#c3<- cbind(x$Date,x$Sub_metering_1)
#c3

### Code for Plot 3. PNG ----

t2 <- paste(x1$Date,x1$Time,sep=' ')
timeset <- strptime(t2,format = "%d/%m/%Y %H:%M:%S" )
#x1$Sub_metering_1
#is.null(as.numeric(x1$Sub_metering_1))
#is.null(as.numeric(x1$Sub_metering_2))
#is.null(as.numeric(x1$Sub_metering_3))
#unique(as.numeric(x1$Sub_metering_1))
#timeset
png(file= "C:/Users/admin/Documents/GitHub/ExData_Plotting1/plot3.png",height = 480,width=480)
plot(timeset,as.numeric(x1$Sub_metering_1),ylab="Energy Submetering",xlab=" ",type="l")
lines(timeset,as.numeric(x1$Sub_metering_2),col="red",type="l")
lines(timeset,as.numeric(x1$Sub_metering_3),col="blue",type="l")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=2.5)
dev.off()
