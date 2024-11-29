#question5:
# Filter data for motor vehicle sources in Baltimore City
motor_vehicle_data <- baltimore_data[baltimore_data$type == "ON-ROAD", ]

# Aggregate emissions by year for motor vehicle sources
motor_vehicle_emissions <- aggregate(Emissions ~ year, data = motor_vehicle_data, sum)

# Create a base plot for motor vehicle emissions in Baltimore City
plot(motor_vehicle_emissions$year, motor_vehicle_emissions$Emissions, type = "b", 
     xlab = "Year", ylab = "Total Emissions (Tons)", 
     main = "Motor Vehicle PM2.5 Emissions in Baltimore City (1999-2008)", 
     col = "purple", pch = 19)
