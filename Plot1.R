#install.packages("grDevices)
library("graphics")
getwd()
x<- read.delim("C:/Users/admin/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt",header = T,sep =';',stringsAsFactors = FALSE)
x1 <- subset(x,Date == '2/1/2007')
x1 <- rbind(x1,subset(x,Date=='2/2/2007'))

### Code for Plot 1. PNG ----

names(x1)
head(x1,3)
#y<-as.numeric(x1$Global_active_power)
#class(x1$Global_active_power)
#x1$Global_active_power
as.numeric(x1$Global_active_power)
png(file= "C:/Users/admin/Documents/GitHub/ExData_Plotting1/plot1.png",height = 480,width=480, units="px",type="windows")
 hist(as.numeric(x1$Global_active_power),freq = T,col="red",xlab="Global Active Power (kilowatts)",ylab= "Frequency",main="Global Active Power")
dev.off



