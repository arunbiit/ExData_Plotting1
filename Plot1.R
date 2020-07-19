# This file reads the data into a datasets and subsets it

# Check if file exists, specify wd and load otherwise
if (!file.exists(paste(file.path(getwd()),"/data/",sep=""))){
  setwd("C:/Users/aruna/OneDrive/Documents/R/ExData_Plotting1")
  source("LoadData.R", chdir = T)
}

# Plotting the graph
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(df$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")
dev.off()
