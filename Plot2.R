#install.packages("grDevices")
#library(lattice)
getwd()
x<- read.delim("C:/Users/admin/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt",header = T,sep =';',stringsAsFactors = FALSE)
x1 <- subset(x,Date == '2/1/2007')
x1 <- rbind(x1,subset(x,Date=='2/2/2007'))

x$Date

### Code for Plot 2. PNG ----

t2 <- paste(x1$Date,x1$Time,sep=' ')
timeset <- strptime(t2,format = "%m/%d/%Y %H:%M:%S" )
#timeset
png(file= "C:/Users/admin/Documents/GitHub/ExData_Plotting1/plot2.png",height = 480,width=480)
plot(timeset,as.numeric(x1$Global_active_power),ylab="Global Active Power (kilowatts)",type="l")
dev.off()
