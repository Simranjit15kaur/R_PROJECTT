#question3:
# Load necessary library
library(ggplot2)

# Aggregate emissions by year and source type for Baltimore City
baltimore_by_type <- aggregate(Emissions ~ year + type, data = baltimore_data, sum)

# Create a ggplot to show emissions by source type
ggplot(baltimore_by_type, aes(x = year, y = Emissions, color = type)) +
  geom_line() +
  geom_point() +
  labs(title = "PM2.5 Emissions by Source Type in Baltimore City (1999-2008)", 
       x = "Year", y = "Total Emissions (Tons)") +
  theme_minimal()
