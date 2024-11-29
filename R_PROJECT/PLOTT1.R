# Load necessary libraries
NEI <- readRDS("summarySCC_PM25.rds")

# Aggregate emissions by year
total_emissions <- aggregate(Emissions ~ year, data = NEI, sum)

# Create a base plot for total emissions
plot(total_emissions$year, total_emissions$Emissions, type = "b", 
     xlab = "Year", ylab = "Total Emissions (Tons)", 
     main = "Total PM2.5 Emissions in the United States (1999-2008)", 
     col = "blue", pch = 19)




