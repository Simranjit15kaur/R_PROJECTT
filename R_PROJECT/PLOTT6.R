#question6:
# Filter motor vehicle data for both cities
baltimore_motor_data <- baltimore_data[baltimore_data$type == "ON-ROAD", ]
la_data <- NEI[NEI$fips == "06037" & NEI$type == "ON-ROAD", ]

# Aggregate emissions by year for both cities
baltimore_la_emissions <- rbind(
  aggregate(Emissions ~ year, data = baltimore_motor_data, sum),
  aggregate(Emissions ~ year, data = la_data, sum)
)

# Add a city column
baltimore_la_emissions$city <- rep(c("Baltimore", "Los Angeles"), each = 4)

# Create a ggplot to compare motor vehicle emissions in both cities
ggplot(baltimore_la_emissions, aes(x = year, y = Emissions, color = city, group = city)) +
  geom_line() +
  geom_point() +
  labs(title = "Comparison of Motor Vehicle PM2.5 Emissions (Baltimore vs. Los Angeles)", 
       x = "Year", y = "Total Emissions (Tons)") +
  theme_minimal()
