#################### Load data ############################################################
file="household_power_consumption.txt"
df <- read.csv2(file, sep=";",header=TRUE, fill=TRUE, na.strings='?')

dfd <- df[as.Date(df$Date,'%d/%m/%Y')=='2007-02-01' | as.Date(df$Date,'%d/%m/%Y')=='2007-02-02',]
dfd$DateTime <- strptime(paste(dfd$Date,dfd$Time), "%d/%m/%Y %H:%M:%S")
########################## Plot 2 ######################################################
png(filename = "plot2.png",width = 480, height = 480)
with (dfd,plot(DateTime,as.numeric(as.character(Global_active_power))
               ,ylab="Global Active Power (kilowatts)"
               ,xlab=""
               ,type="l" ))
dev.off()