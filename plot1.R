#################### Load data ############################################################
file="household_power_consumption.txt"
df <- read.csv2(file, sep=";",header=TRUE, fill=TRUE, na.strings='?')

dfd <- df[as.Date(df$Date,'%d/%m/%Y')=='2007-02-01' | as.Date(df$Date,'%d/%m/%Y')=='2007-02-02',]
dfd$DateTime <- strptime(paste(dfd$Date,dfd$Time), "%d/%m/%Y %H:%M:%S")
######################### Plot 1 ##################################################
png(filename = "plot1.png",width = 480, height = 480)
hist(as.numeric(as.character(dfd$Global_active_power))
     ,col="red"
     ,main="Global Active Power"
     ,xlab="Global Active Power (kilowatts)")
dev.off()