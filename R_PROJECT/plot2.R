#question2:
# Filter the data for Baltimore City (fips == "24510")
baltimore_data <- NEI[NEI$fips == "24510", ]

# Aggregate emissions by year for Baltimore City
baltimore_emissions <- aggregate(Emissions ~ year, data = baltimore_data, sum)

# Create a base plot for total emissions in Baltimore City
plot(baltimore_emissions$year, baltimore_emissions$Emissions, type = "b", 
     xlab = "Year", ylab = "Total Emissions (Tons)", 
     main = "Total PM2.5 Emissions in Baltimore City (1999-2008)", 
     col = "red", pch = 19)